import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(

      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool typing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar: AppBar(
               title:typing ? TextBox(): Text('Search'),
               leading: IconButton(
                 icon: Icon(typing ? Icons.done: Icons.search,),
                 onPressed: (){
                   setState(() {
                     typing = !typing;
                   });
                 },
               ),

               backgroundColor: Colors.blue,
             ),
                 backgroundColor: Colors.blue.shade200,
                 endDrawer: Drawer(
                   backgroundColor: Colors.white,
                   child: ListView(
                     padding: EdgeInsets.zero,
                     children: [
                        DrawerHeader(
                           decoration: BoxDecoration(
                                   image: DecorationImage(
                                        image: AssetImage('assets/image518.png'),
                                    fit: BoxFit.fill,
                             ),
                             color: Colors.blue,
                           ),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                         Text('Settings',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,
                                               color: Colors.white, fontFamily: 'SyneMono'),),
                                                     Icon(Icons.settings,size: 28, color: Colors.deepOrange,),
                              ],
                            ),
                         ),

                       ListTile(
                         title: const Text('Profile', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,
                             color: Colors.black54, fontFamily: 'SyneMono'),),
                                 onTap: (){
                                      Navigator.pop(context);
                         },
                       ),

                       ListTile(
                         title: const Text('Contact', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,
                             color: Colors.black54, fontFamily: 'SyneMono'),),
                                 onTap: (){
                                       Navigator.pop(context);
                         },
                       ),

                       ListTile(
                         title: const Text('About Us', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,
                             color: Colors.black54, fontFamily: 'SyneMono'),),
                                 onTap: (){
                                    Navigator.pop(context);
                         },
                       ),

                       ListTile(
                         title: const Text('Sign Out', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,
                             color: Colors.deepOrange, fontFamily: 'SyneMono'),),
                         onTap: (){
                           Navigator.pop(context);
                         },
                       ),
                     ],
                   ),
                 ),

      body: Container(
           child: Padding(
              padding: EdgeInsets.all(40.0),
                 child: GridView(
                    shrinkWrap: true,
                      children: [
                        Card(
                          elevation: 30,
                child: Container(decoration: BoxDecoration(boxShadow:[BoxShadow(blurRadius: 2.0,spreadRadius: 2.0,color: Colors.white38)],
                  borderRadius: BorderRadius.circular(0),color: Colors.white),
         child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                   children: [

                     Icon(Icons.home,size: 60, color: Colors.deepOrange,),
                          Text('Booked Flights', style: TextStyle(fontFamily: 'SyneMono', fontWeight: FontWeight.bold,
               fontSize: 18.0, color: Colors.grey.shade700),),
              ],
            ),), ),

            Card(
              elevation: 30,
         child: Container(decoration: BoxDecoration(boxShadow:[BoxShadow(blurRadius: 2.0,spreadRadius: 2.0,color: Colors.white38)],
       borderRadius: BorderRadius.circular(20),color: Colors.white,),
      child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                          Icon(Icons.hotel,size: 60, color: Colors.deepOrange,),
                              Text('  Hotel \n Check In', style: TextStyle(fontFamily: 'SyneMono',
                                      fontWeight: FontWeight.bold,
                                          fontSize: 18.0, color: Colors.grey.shade700),)
               ],
            ),), ),

            Card(
              elevation: 30,
          child: Container(decoration: BoxDecoration(boxShadow:[BoxShadow(blurRadius: 2.0,spreadRadius: 2.0,color: Colors.white38)],
        borderRadius: BorderRadius.circular(20),color: Colors.white,),
        child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Icon(Icons.explore,size: 60, color:Colors.deepOrange,),
                                Text('Adventures', style: TextStyle(fontFamily: 'SyneMono',
                                    fontWeight: FontWeight.bold,fontSize: 18.0,
                                        color: Colors.grey.shade700),)
              ],
            ),),),

            Card(
              elevation: 30,
            child: Container(decoration: BoxDecoration(boxShadow:[BoxShadow(blurRadius: 2.0,spreadRadius: 2.0,
           color: Colors.white38)],
          borderRadius: BorderRadius.circular(20),color: Colors.white,),
       child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                             Icon(Icons.book,size: 60, color: Colors.deepOrange,),
                                        Text('Passport',style: TextStyle(fontFamily: 'SyneMono',
                                              fontWeight: FontWeight.bold,
                                                         fontSize: 18.0, color: Colors.grey.shade700), ),
              ],
            ),),),

                        Card(
                          elevation: 30,
                      child: Container(decoration: BoxDecoration(boxShadow:[BoxShadow(blurRadius: 2.0,spreadRadius: 2.0,
                   color: Colors.white38)],
                 borderRadius: BorderRadius.circular(20),color: Colors.white,),
               child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    Icon(Icons.watch,size: 60, color: Colors.deepOrange,),
                                      Text('Travel The \n   World',style: TextStyle(fontFamily: 'SyneMono',
                                           fontWeight: FontWeight.bold,
                                              fontSize: 18.0, color: Colors.grey.shade700), ),
                              ],
                            ),),),

                        Card(
                          elevation: 30,
                          child: Container(decoration: BoxDecoration(boxShadow:[BoxShadow(blurRadius: 2.0,spreadRadius: 2.0,
                              color: Colors.white38)],
                            borderRadius: BorderRadius.circular(20),color: Colors.white,),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.people,size: 60, color: Colors.deepOrange,),
                                Text('Trip Advisor',style: TextStyle(fontFamily: 'SyneMono',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0, color: Colors.grey.shade700), ),
                              ],
                            ),),),


                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Container(
                                   margin: EdgeInsets.only(left: 5.0),
                                      height:50.0 ,
                                          width:140.0,
                                            child: FlatButton(
                                      onPressed: (){},
                                  child: Text('Back\n', style: TextStyle(color: Colors.white, fontSize: 25.0,
                               fontFamily:'SyneMono', fontWeight: FontWeight.bold),),
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                           color: Colors.deepOrange,
                              height: 10.0,
                                padding: EdgeInsets.all(10.0),
                              ),
                            )
                          ],
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                                Container(
                                   margin: EdgeInsets.only(left: 5.0),
                                       height:50.0 ,
                                          width:140.0,
                                               child: FlatButton(
                                          onPressed: (){},
                                     child: Text('Book Now\n', style: TextStyle(color: Colors.white, fontSize: 25.0,
                                fontFamily:'SyneMono', fontWeight: FontWeight.bold),),
                           shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                     ),
                          color: Colors.deepOrange,
                              height: 10.0,
                                padding: EdgeInsets.all(10.0),
                              ),
                            )
                          ],
                        ),
                      ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20, crossAxisSpacing: 20),
          ),
        ),
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Container(
         alignment: Alignment.centerRight,
            color: Colors.white,
              child: TextField(
                 decoration:
                     InputDecoration(border: InputBorder.none, hintText: '  Search'),
          ),
      );
   }
}

