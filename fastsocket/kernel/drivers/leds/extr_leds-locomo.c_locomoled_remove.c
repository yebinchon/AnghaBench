
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locomo_dev {int dummy; } ;


 int led_classdev_unregister (int *) ;
 int locomo_led0 ;
 int locomo_led1 ;

__attribute__((used)) static int locomoled_remove(struct locomo_dev *dev)
{
 led_classdev_unregister(&locomo_led0);
 led_classdev_unregister(&locomo_led1);
 return 0;
}
