
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcc_acpi {int* keymap; } ;
struct input_dev {int keybit; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int KEY_MAX ;
 int clear_bit (int,int ) ;
 struct pcc_acpi* input_get_drvdata (struct input_dev*) ;
 int keymap_get_by_keycode (struct pcc_acpi*,int) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int pcc_setkeycode(struct input_dev *dev, int scancode, int keycode)
{
 struct pcc_acpi *pcc = input_get_drvdata(dev);
 int oldkeycode;

 if (scancode >= ARRAY_SIZE(pcc->keymap))
  return -EINVAL;

 if (keycode < 0 || keycode > KEY_MAX)
  return -EINVAL;

 oldkeycode = pcc->keymap[scancode];
 pcc->keymap[scancode] = keycode;

 set_bit(keycode, dev->keybit);

 if (!keymap_get_by_keycode(pcc, oldkeycode))
  clear_bit(oldkeycode, dev->keybit);

 return 0;
}
