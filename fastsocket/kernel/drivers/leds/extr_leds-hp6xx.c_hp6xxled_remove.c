
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int hp6xx_green_led ;
 int hp6xx_red_led ;
 int led_classdev_unregister (int *) ;

__attribute__((used)) static int hp6xxled_remove(struct platform_device *pdev)
{
 led_classdev_unregister(&hp6xx_red_led);
 led_classdev_unregister(&hp6xx_green_led);

 return 0;
}
