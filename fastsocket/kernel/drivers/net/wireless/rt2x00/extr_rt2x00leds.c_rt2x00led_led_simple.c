
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int brightness; int (* brightness_set ) (TYPE_1__*,unsigned int) ;} ;
struct rt2x00_led {int flags; TYPE_1__ led_dev; } ;


 unsigned int LED_FULL ;
 unsigned int LED_OFF ;
 int LED_REGISTERED ;
 int stub1 (TYPE_1__*,unsigned int) ;

__attribute__((used)) static void rt2x00led_led_simple(struct rt2x00_led *led, bool enabled)
{
 unsigned int brightness = enabled ? LED_FULL : LED_OFF;

 if (!(led->flags & LED_REGISTERED))
  return;

 led->led_dev.brightness_set(&led->led_dev, brightness);
 led->led_dev.brightness = brightness;
}
