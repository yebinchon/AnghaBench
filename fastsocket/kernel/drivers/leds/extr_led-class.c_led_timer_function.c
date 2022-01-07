
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct led_timer {unsigned long blink_delay_on; unsigned long blink_delay_off; unsigned long blink_brightness; int blink_timer; TYPE_1__* cdev; } ;
struct TYPE_3__ {unsigned long brightness; int (* brightness_set ) (TYPE_1__*,unsigned long) ;} ;


 unsigned long LED_OFF ;
 int __led_set_brightness (TYPE_1__*,unsigned long) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (unsigned long) ;
 int stub1 (TYPE_1__*,unsigned long) ;

__attribute__((used)) static void led_timer_function(unsigned long data)
{
 struct led_timer *led = (struct led_timer *)data;
 unsigned long brightness;
 unsigned long delay;

 if (!led->blink_delay_on || !led->blink_delay_off) {
  led->cdev->brightness_set(led->cdev, LED_OFF);
  return;
 }

 brightness = led->cdev->brightness;
 if (!brightness) {

  brightness = led->blink_brightness;
  delay = led->blink_delay_on;
 } else {



  led->blink_brightness = brightness;
  brightness = LED_OFF;
  delay = led->blink_delay_off;
 }

 __led_set_brightness(led->cdev, brightness);
 mod_timer(&led->blink_timer, jiffies + msecs_to_jiffies(delay));
}
