
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_timer {unsigned long blink_delay_on; unsigned long blink_delay_off; int blink_brightness; int blink_timer; } ;
struct led_classdev {int brightness; int max_brightness; int (* blink_set ) (struct led_classdev*,unsigned long*,unsigned long*) ;} ;


 int __led_set_brightness (struct led_classdev*,int) ;
 scalar_t__ jiffies ;
 struct led_timer* led_get_timer (struct led_classdev*) ;
 struct led_timer* led_new_timer (struct led_classdev*) ;
 int led_stop_software_blink (struct led_timer*) ;
 int mod_timer (int *,scalar_t__) ;
 int stub1 (struct led_classdev*,unsigned long*,unsigned long*) ;

void led_blink_set(struct led_classdev *led_cdev,
     unsigned long *delay_on,
     unsigned long *delay_off)
{
 struct led_timer *led;
 int current_brightness;

 if (led_cdev->blink_set &&
     !led_cdev->blink_set(led_cdev, delay_on, delay_off))
  return;

 led = led_get_timer(led_cdev);
 if (!led) {
  led = led_new_timer(led_cdev);
  if (!led)
   return;
 }


 if (!*delay_on && !*delay_off)
  *delay_on = *delay_off = 500;

 if (led->blink_delay_on == *delay_on &&
     led->blink_delay_off == *delay_off)
  return;

 current_brightness = led_cdev->brightness;
 if (current_brightness)
  led->blink_brightness = current_brightness;
 if (!led->blink_brightness)
  led->blink_brightness = led_cdev->max_brightness;

 led_stop_software_blink(led);
 led->blink_delay_on = *delay_on;
 led->blink_delay_off = *delay_off;


 if (!*delay_on)
  return;


 if (!*delay_off) {
  __led_set_brightness(led_cdev, led->blink_brightness);
  return;
 }

 mod_timer(&led->blink_timer, jiffies + 1);
}
