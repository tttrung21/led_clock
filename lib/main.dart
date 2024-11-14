import 'package:flutter/material.dart';
import 'package:lcd_led/lcd_led.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ClockDisplay(),
    );
  }
}
class ClockDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final hour = now.hour.toString().padLeft(2,'0');
    final minute = now.minute.toString().padLeft(2,'0');

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 96,
              width: 110,
              child: LedDigits(
                string: hour,
                numberOfLeds: 2,
                spacing: 5,
                backgroundColor: Colors.white,
                onColor: Colors.black,
                offColor: Colors.grey,
              ),
            ),
            const Text(":",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,),),
            SizedBox(
              height: 96,
              width: 110,
              child: LedDigits(
                string: minute,
                numberOfLeds: 2,
                spacing: 5,
                backgroundColor: Colors.white,
                onColor: Colors.black,
                offColor: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
