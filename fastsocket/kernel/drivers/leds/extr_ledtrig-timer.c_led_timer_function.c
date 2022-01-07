
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_trig_data {unsigned long delay_on; unsigned long delay_off; unsigned long brightness_on; int timer; } ;
struct led_classdev {struct timer_trig_data* trigger_data; } ;


 unsigned long LED_OFF ;
 scalar_t__ jiffies ;
 unsigned long led_get_brightness (struct led_classdev*) ;
 int led_set_brightness (struct led_classdev*,unsigned long) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (unsigned long) ;

__attribute__((used)) static void led_timer_function(unsigned long data)
{
 struct led_classdev *led_cdev = (struct led_classdev *) data;
 struct timer_trig_data *timer_data = led_cdev->trigger_data;
 unsigned long brightness;
 unsigned long delay;

 if (!timer_data->delay_on || !timer_data->delay_off) {
  led_set_brightness(led_cdev, LED_OFF);
  return;
 }

 brightness = led_get_brightness(led_cdev);
 if (!brightness) {

  brightness = timer_data->brightness_on;
  delay = timer_data->delay_on;
 } else {



  timer_data->brightness_on = brightness;
  brightness = LED_OFF;
  delay = timer_data->delay_off;
 }

 led_set_brightness(led_cdev, brightness);

 mod_timer(&timer_data->timer, jiffies + msecs_to_jiffies(delay));
}
