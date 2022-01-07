
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int (* getkeycode ) (struct input_dev*,int,int*) ;} ;


 int EINVAL ;
 int stub1 (struct input_dev*,int,int*) ;

int input_get_keycode(struct input_dev *dev, int scancode, int *keycode)
{
 if (scancode < 0)
  return -EINVAL;

 return dev->getkeycode(dev, scancode, keycode);
}
