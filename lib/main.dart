import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
   int x = 5;
  int y= 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Lottery winning number is ',style: TextStyle(fontSize: 30),),
            Text(y.toString(),textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
            SizedBox(height: 30,),
            Center(
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.3),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center
                  ,
                  children: [
                    x== y? Text('Congratulations! You Won the lottery',style: TextStyle(color: Colors.white,fontSize: 35),): Text('Better luck next time',style: TextStyle(color: Colors.red,fontSize: 35),),
                  ],
                ),
              ),
            ),

          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            y = random.nextInt(10);
            setState(() {

            });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
