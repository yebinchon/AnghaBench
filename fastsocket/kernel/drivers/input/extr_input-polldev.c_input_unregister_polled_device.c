
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {int * input; } ;


 int input_unregister_device (int *) ;

void input_unregister_polled_device(struct input_polled_dev *dev)
{
 input_unregister_device(dev->input);
 dev->input = ((void*)0);
}
