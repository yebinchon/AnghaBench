
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_3__ {int cdev; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ams_delta_leds ;
 int led_classdev_unregister (int *) ;

__attribute__((used)) static int ams_delta_led_remove(struct platform_device *pdev)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ams_delta_leds); i++)
  led_classdev_unregister(&ams_delta_leds[i].cdev);

 return 0;
}
