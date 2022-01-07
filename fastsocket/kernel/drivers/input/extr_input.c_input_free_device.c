
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int input_put_device (struct input_dev*) ;

void input_free_device(struct input_dev *dev)
{
 if (dev)
  input_put_device(dev);
}
