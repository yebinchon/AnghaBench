
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_FRONT_LEFT ;
 int LED_FRONT_RIGHT ;
 int led_port ;
 int led_value ;
 int writeb (int,int ) ;

__attribute__((used)) static void qube_front_led_set(struct led_classdev *led_cdev,
          enum led_brightness brightness)
{
 if (brightness)
  led_value = LED_FRONT_LEFT | LED_FRONT_RIGHT;
 else
  led_value = ~(LED_FRONT_LEFT | LED_FRONT_RIGHT);
 writeb(led_value, led_port);
}
