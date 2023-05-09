import 'package:flutter/material.dart';

ThemeData _themeLight = ThemeData.light();

ThemeData themeLight = _themeLight.copyWith(
  textTheme: customTextTheme(_themeLight.textTheme),
  elevatedButtonTheme: customElevatedButtonTheme,
  inputDecorationTheme: customInputDecorationTheme,
  iconTheme: customIconTheme,
  cardTheme: customCardTheme,
  appBarTheme: customAppBarTheme,
  bottomNavigationBarTheme: customBottomNavigationBarTheme,
  chipTheme: customChipTheme,
  primaryColorLight: Colors.deepOrange[100],
  primaryColorDark: Colors.deepOrange[100],
  dialogTheme: customDialogTheme,
);
TextTheme customTextTheme(TextTheme base) {
  return base.copyWith(
    headline4: const TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: Colors.black38,
    ),
  );
}

DialogTheme customDialogTheme = _themeLight.dialogTheme.copyWith(
  backgroundColor: Colors.white60,
  elevation: 0,
);

ChipThemeData customChipTheme = _themeLight.chipTheme.copyWith(
    selectedColor: Colors.deepOrange[100],
    backgroundColor: Colors.black54,
    disabledColor: Colors.black38,
    labelStyle: const TextStyle(
      color: Colors.white70,
      fontWeight: FontWeight.bold,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    shadowColor: Colors.black.withOpacity(0.9),
    elevation: 3,
    showCheckmark: false);

BottomNavigationBarThemeData customBottomNavigationBarTheme =
    _themeLight.bottomNavigationBarTheme.copyWith(
  backgroundColor: Colors.black45,
  selectedItemColor: Colors.deepOrange[100],
  elevation: 0,
);

AppBarTheme customAppBarTheme = _themeLight.appBarTheme.copyWith(
  backgroundColor: Colors.black54,
  centerTitle: false,
  actionsIconTheme: customIconTheme,
  titleTextStyle: TextStyle(
    color: Colors.deepOrange[100],
    fontSize: 18,
    fontWeight: FontWeight.w500,
  ),
);

CardTheme customCardTheme = _themeLight.cardTheme.copyWith(
  clipBehavior: Clip.hardEdge,
  color: Colors.deepOrange[100],
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  ),
  elevation: 15.0,
  shadowColor: Colors.black.withOpacity(0.9),
  margin: const EdgeInsets.all(16.0),
);

final InputDecorationTheme customInputDecorationTheme = InputDecorationTheme(
  floatingLabelStyle: TextStyle(
    color: Colors.deepOrange[100],
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.deepOrange[100] ?? Colors.orange),
  ),
  enabledBorder: const UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black54),
  ),
  suffixIconColor: Colors.deepOrange[100],
);

final IconThemeData customIconTheme =
    IconThemeData(color: Colors.deepOrange[100]);

final ElevatedButtonThemeData customElevatedButtonTheme =
    ElevatedButtonThemeData(
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color?>(Colors.black54),
    backgroundColor: MaterialStateProperty.all<Color?>(Colors.deepOrange[200]),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  ),
);
