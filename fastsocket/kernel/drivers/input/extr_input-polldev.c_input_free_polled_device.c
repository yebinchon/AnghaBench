
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {int input; } ;


 int input_free_device (int ) ;
 int kfree (struct input_polled_dev*) ;

void input_free_polled_device(struct input_polled_dev *dev)
{
 if (dev) {
  input_free_device(dev->input);
  kfree(dev);
 }
}
