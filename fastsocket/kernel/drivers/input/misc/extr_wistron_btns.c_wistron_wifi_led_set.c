
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_OFF ;
 int WIFI ;
 int bios_set_state (int ,int) ;

__attribute__((used)) static void wistron_wifi_led_set(struct led_classdev *led_cdev,
    enum led_brightness value)
{
 bios_set_state(WIFI, (value != LED_OFF) ? 1 : 0);
}
