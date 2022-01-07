
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ cdev; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int LED_CORE_SUSPENDRESUME ;
 TYPE_3__* ams_delta_leds ;
 int led_classdev_register (int *,TYPE_1__*) ;
 int led_classdev_unregister (TYPE_1__*) ;

__attribute__((used)) static int ams_delta_led_probe(struct platform_device *pdev)
{
 int i, ret;

 for (i = 0; i < ARRAY_SIZE(ams_delta_leds); i++) {
  ams_delta_leds[i].cdev.flags |= LED_CORE_SUSPENDRESUME;
  ret = led_classdev_register(&pdev->dev,
    &ams_delta_leds[i].cdev);
  if (ret < 0)
   goto fail;
 }

 return 0;
fail:
 while (--i >= 0)
  led_classdev_unregister(&ams_delta_leds[i].cdev);
 return ret;
}
