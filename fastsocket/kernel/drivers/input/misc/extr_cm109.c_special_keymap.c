
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short KEY_MUTE ;
 unsigned short KEY_RESERVED ;
 unsigned short KEY_VOLUMEDOWN ;
 unsigned short KEY_VOLUMEUP ;





__attribute__((used)) static unsigned short special_keymap(int code)
{
 if (code > 0xff) {
  switch (code - 0xff) {
  case 130: return KEY_MUTE;
  case 131: return KEY_MUTE;
  case 129: return KEY_VOLUMEDOWN;
  case 128: return KEY_VOLUMEUP;
  }
 }
 return KEY_RESERVED;
}
