
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int led_classdev_unregister (int *) ;
 int net48xx_error_led ;

__attribute__((used)) static int net48xx_led_remove(struct platform_device *pdev)
{
 led_classdev_unregister(&net48xx_error_led);
 return 0;
}
