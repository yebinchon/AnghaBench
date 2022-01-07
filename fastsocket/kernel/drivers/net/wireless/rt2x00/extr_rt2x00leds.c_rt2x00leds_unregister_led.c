
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int (* brightness_set ) (TYPE_1__*,int ) ;} ;
struct rt2x00_led {int flags; TYPE_1__ led_dev; } ;


 int LED_OFF ;
 int LED_REGISTERED ;
 int LED_SUSPENDED ;
 int led_classdev_unregister (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void rt2x00leds_unregister_led(struct rt2x00_led *led)
{
 led_classdev_unregister(&led->led_dev);







 if (!(led->led_dev.flags & LED_SUSPENDED))
  led->led_dev.brightness_set(&led->led_dev, LED_OFF);

 led->flags &= ~LED_REGISTERED;
}
