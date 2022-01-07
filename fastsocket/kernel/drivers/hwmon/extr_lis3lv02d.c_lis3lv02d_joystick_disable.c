
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * idev; scalar_t__ irq; } ;


 int input_unregister_polled_device (int *) ;
 TYPE_1__ lis3_dev ;
 int lis3lv02d_misc_device ;
 int misc_deregister (int *) ;

void lis3lv02d_joystick_disable(void)
{
 if (!lis3_dev.idev)
  return;

 if (lis3_dev.irq)
  misc_deregister(&lis3lv02d_misc_device);
 input_unregister_polled_device(lis3_dev.idev);
 lis3_dev.idev = ((void*)0);
}
