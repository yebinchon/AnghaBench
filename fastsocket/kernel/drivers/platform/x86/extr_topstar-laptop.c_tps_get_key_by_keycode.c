
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps_key_entry {int keycode; scalar_t__ code; } ;


 struct tps_key_entry* topstar_keymap ;

__attribute__((used)) static struct tps_key_entry *tps_get_key_by_keycode(int code)
{
 struct tps_key_entry *key;

 for (key = topstar_keymap; key->code; key++)
  if (code == key->keycode)
   return key;

 return ((void*)0);
}
