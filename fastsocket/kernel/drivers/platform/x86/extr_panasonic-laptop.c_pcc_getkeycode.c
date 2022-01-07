
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcc_acpi {int* keymap; } ;
struct input_dev {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 struct pcc_acpi* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int pcc_getkeycode(struct input_dev *dev, int scancode, int *keycode)
{
 struct pcc_acpi *pcc = input_get_drvdata(dev);

 if (scancode >= ARRAY_SIZE(pcc->keymap))
  return -EINVAL;

 *keycode = pcc->keymap[scancode];

 return 0;
}
