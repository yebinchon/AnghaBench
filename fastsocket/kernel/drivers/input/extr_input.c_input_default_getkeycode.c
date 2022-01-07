
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int keycodemax; int keycodesize; } ;


 int EINVAL ;
 int input_fetch_keycode (struct input_dev*,int) ;

__attribute__((used)) static int input_default_getkeycode(struct input_dev *dev,
        int scancode, int *keycode)
{
 if (!dev->keycodesize)
  return -EINVAL;

 if (scancode >= dev->keycodemax)
  return -EINVAL;

 *keycode = input_fetch_keycode(dev, scancode);

 return 0;
}
