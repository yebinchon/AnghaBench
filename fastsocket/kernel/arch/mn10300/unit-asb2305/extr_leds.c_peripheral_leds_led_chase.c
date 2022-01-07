
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASB2305_7SEGLEDS ;
 size_t asb2305_led_chase ;
 int * asb2305_led_chase_tbl ;

void peripheral_leds_led_chase(void)
{
 ASB2305_7SEGLEDS = asb2305_led_chase_tbl[asb2305_led_chase];
 asb2305_led_chase++;
 if (asb2305_led_chase >= 6)
  asb2305_led_chase = 0;
}
