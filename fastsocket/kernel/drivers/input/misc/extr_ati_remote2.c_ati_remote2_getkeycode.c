
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct ati_remote2 {int mode_mask; int** keycode; } ;


 int ATI_REMOTE2_PC ;
 int EINVAL ;
 int ati_remote2_lookup (int) ;
 struct ati_remote2* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int ati_remote2_getkeycode(struct input_dev *idev,
      int scancode, int *keycode)
{
 struct ati_remote2 *ar2 = input_get_drvdata(idev);
 int index, mode;

 mode = scancode >> 8;
 if (mode > ATI_REMOTE2_PC || !((1 << mode) & ar2->mode_mask))
  return -EINVAL;

 index = ati_remote2_lookup(scancode & 0xFF);
 if (index < 0)
  return -EINVAL;

 *keycode = ar2->keycode[mode][index];
 return 0;
}
