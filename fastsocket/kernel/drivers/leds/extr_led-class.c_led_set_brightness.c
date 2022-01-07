
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_timer {int dummy; } ;
struct led_classdev {void (* brightness_set ) (struct led_classdev*,int) ;} ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 struct led_timer* led_get_timer (struct led_classdev*) ;
 int led_stop_software_blink (struct led_timer*) ;
 void stub1 (struct led_classdev*,int) ;

void led_set_brightness(struct led_classdev *led_cdev,
   enum led_brightness brightness)
{
 struct led_timer *led = led_get_timer(led_cdev);

 if (led)
  led_stop_software_blink(led);

 return led_cdev->brightness_set(led_cdev, brightness);
}
