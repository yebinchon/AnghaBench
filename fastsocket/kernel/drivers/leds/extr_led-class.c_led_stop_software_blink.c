
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_timer {scalar_t__ blink_delay_off; scalar_t__ blink_delay_on; int blink_timer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void led_stop_software_blink(struct led_timer *led)
{
 del_timer_sync(&led->blink_timer);
 led->blink_delay_on = 0;
 led->blink_delay_off = 0;
}
