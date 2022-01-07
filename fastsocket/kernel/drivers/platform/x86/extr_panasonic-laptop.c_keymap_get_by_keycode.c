
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcc_acpi {int* keymap; } ;


 int ARRAY_SIZE (int*) ;

__attribute__((used)) static int keymap_get_by_keycode(struct pcc_acpi *pcc, int keycode)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(pcc->keymap); i++) {
  if (pcc->keymap[i] == keycode)
   return i+1;
 }

 return 0;
}
