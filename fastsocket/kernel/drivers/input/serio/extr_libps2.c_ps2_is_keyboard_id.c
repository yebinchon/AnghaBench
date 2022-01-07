
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_ids ;


 int * memchr (char const*,char,int) ;

int ps2_is_keyboard_id(char id_byte)
{
 static const char keyboard_ids[] = {
  0xab,
  0xac,
  0x2b,
  0x5d,
  0x60,
  0x47,
 };

 return memchr(keyboard_ids, id_byte, sizeof(keyboard_ids)) != ((void*)0);
}
