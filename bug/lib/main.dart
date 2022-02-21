import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Corona Out',
        home: const Zoom());
  }
}

class Zoom extends StatefulWidget {
  const Zoom({Key? key}) : super(key: key);

  @override
  _ZoomState createState() => _ZoomState();
}

class _ZoomState extends State<Zoom> {
  @override
  Widget build(BuildContext context) {
    var rotationAngle = ((-12 * pi) / 180);
    return Transform.rotate(
        angle: rotationAngle,
        alignment: AlignmentDirectional.topStart,
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
              onTap: (int newIndex) {},
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '任务',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  label: '菜单',
                ),
                BottomNavigationBarItem(icon: SizedBox.shrink()),
                BottomNavigationBarItem(
                  icon: Icon(Icons.analytics),
                  label: '统计',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: '我的',
                ),
              ]),
          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return Container(
                  color: Colors.blue,
                );
              case 1:
                return Container(
                  color: Colors.red,
                );
              case 3:
                return Container(
                  color: Colors.green,
                );
              case 4:
                return Container(
                  color: Colors.yellow,
                );
              default:
                return Container(
                  color: Colors.blue,
                );
            }
          },
        ));
  }
}
