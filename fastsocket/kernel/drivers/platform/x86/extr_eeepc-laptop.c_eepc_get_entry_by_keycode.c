
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_entry {scalar_t__ type; int keycode; } ;


 scalar_t__ KE_END ;
 scalar_t__ KE_KEY ;
 struct key_entry* eeepc_keymap ;

__attribute__((used)) static struct key_entry *eepc_get_entry_by_keycode(int code)
{
 struct key_entry *key;

 for (key = eeepc_keymap; key->type != KE_END; key++)
  if (code == key->keycode && key->type == KE_KEY)
   return key;

 return ((void*)0);
}
