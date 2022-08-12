import 'package:flutter/material.dart';
import '../screens/category_meals_screen.dart';
import '../screens/meal_detail_screen.dart';
import 'screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.amber,
          canvasColor: Color.fromARGB(255, 252, 122, 82),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline6: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
              headline5: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ))),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoryScreen(),
        CategoryMealScreen.routeName: (ctx) => CategoryMealScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      // onGenerateRoute: (settings) {
      //   print(settings.arguments);
      //   return MaterialPageRoute(builder: (context) => CategoryScreen());
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => CategoryScreen());
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: Center(
        child: Text('Navigation Time!'),
      ),
    );
  }
}
