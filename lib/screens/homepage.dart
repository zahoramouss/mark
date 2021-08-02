import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import '../Resources/resources.dart';
import '../Resources/string_resource.dart';
import '../widget/widgets.dart';
class homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
 return  homestate1();
  }

}
class homestate1 extends State<homepage>{
  TextEditingController search =TextEditingController ();
  String all='all';
  String toys='toys';
  String bed='beds';
  String Clothing='clothing';
  String Strollers='strollers';
  String Books='books';
  bool h=false;
  //side-menu-opener
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:  Positioned(
          top: 0,
          left: 0,
          right: 150,
          child:  IconButton(onPressed: (){},
            icon: Image.asset('assets/images/side-menu-opener.png'),

          ),
        )

      ),
      body: Container(
        child: Column(
          children: [
            ////head
            header(context,str_homeheader,search),
            //iconbar
            Container(
              margin: EdgeInsets.only(top: 10),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  icon(context,all),
                  icon(context,toys),
                  icon(context,Strollers),
                  icon(context,bed),
                  icon(context,Clothing),
                  icon(context,Books),

                ],
              ),
            ),


            //List widgets
            Expanded(
              child: SingleChildScrollView(
                child:Container(
                  child:  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:EdgeInsets.only(top:20 ,left:10 ),
                          child: Text(str_sale,style: TextStyle(
                            fontFamily: stc_font,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color:darkblue,
                          ),),
                        ),
                        Container(
                          height: 159,
                          //color: Colors.red,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 12,
                              itemBuilder: (BuildContext context, int position){
                                return salediscount( h);



                              }
                          ),
                        ),

                        Container(
                          margin:EdgeInsets.only(top:20 ,left:10 ),
                          child: Text(str_most,style: TextStyle(
                            fontFamily: stc_font,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color:darkblue,
                          ),),
                        ),
                      /*  Container(
                          height: 100,
                          color: Colors.greenAccent,
                        ),*/
                      /*  Container(
                          height:200,
                          color: Colors.red,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 18,
                              itemBuilder: (BuildContext context, int position){
                                return mostpopular();



                              }
                          ),
                        ),*/
                        Container(
                          height: 159,
                          //color: Colors.red,

                              /*Container(child: CircleAvatar(
                                radius: 14,
                                backgroundColor: ongo,

                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.arrow_forward_sharp),
                                ),
                              ),)*/
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 12,
                                  itemBuilder: (BuildContext context, int position){
                                    return mostpopular();



                                  }
                              ),),



                        Container(
                          margin:EdgeInsets.only(top:20 ,left:10 ),
                          child: Text(str_newarrival,style: TextStyle(
                            fontFamily: stc_font,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color:darkblue,
                          ),),
                        ),
                       //new arrival
                       SizedBox(
                           height: MediaQuery.of(context).size.height*.50,


                         child:  GridView.builder(

                             gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent:278),

                             itemCount:4,
                             itemBuilder:(BuildContext context,int index,){
                               return
                                 Center(child:newarrival());}))

                      ],
                  ),
                )
              ),
            ),

          ],
        ),
      ),
    );
  }
}