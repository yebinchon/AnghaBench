
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int led_classdev_unregister (int *) ;
 int wrap_error_led ;
 int wrap_extra_led ;
 int wrap_power_led ;

__attribute__((used)) static int wrap_led_remove(struct platform_device *pdev)
{
 led_classdev_unregister(&wrap_power_led);
 led_classdev_unregister(&wrap_error_led);
 led_classdev_unregister(&wrap_extra_led);
 return 0;
}
