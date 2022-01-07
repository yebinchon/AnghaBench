
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int brightness; int (* brightness_set ) (TYPE_1__*,unsigned int) ;} ;
struct rt2x00_led {scalar_t__ type; int flags; TYPE_1__ led_dev; } ;
struct rt2x00_dev {scalar_t__ rssi_offset; struct rt2x00_led led_qual; } ;


 int LED_FULL ;
 int LED_REGISTERED ;
 scalar_t__ LED_TYPE_QUALITY ;
 int stub1 (TYPE_1__*,unsigned int) ;

void rt2x00leds_led_quality(struct rt2x00_dev *rt2x00dev, int rssi)
{
 struct rt2x00_led *led = &rt2x00dev->led_qual;
 unsigned int brightness;

 if ((led->type != LED_TYPE_QUALITY) || !(led->flags & LED_REGISTERED))
  return;





 rssi += rt2x00dev->rssi_offset;





 if (rssi <= 30)
  rssi = 0;
 else if (rssi <= 39)
  rssi = 1;
 else if (rssi <= 49)
  rssi = 2;
 else if (rssi <= 53)
  rssi = 3;
 else if (rssi <= 63)
  rssi = 4;
 else
  rssi = 5;






 brightness = ((LED_FULL / 6) * rssi) + 1;
 if (brightness != led->led_dev.brightness) {
  led->led_dev.brightness_set(&led->led_dev, brightness);
  led->led_dev.brightness = brightness;
 }
}
