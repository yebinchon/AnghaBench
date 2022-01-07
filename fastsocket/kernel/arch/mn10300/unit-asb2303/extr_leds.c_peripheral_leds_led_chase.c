
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASB2303_7SEGLEDS ;
 int ASB2303_GPIO0DEF ;
 size_t asb2303_led_chase ;
 int * asb2303_led_chase_tbl ;

void peripheral_leds_led_chase(void)
{
 ASB2303_GPIO0DEF = 0x5555;
 ASB2303_7SEGLEDS = asb2303_led_chase_tbl[asb2303_led_chase];
 asb2303_led_chase++;
 if (asb2303_led_chase >= 6)
  asb2303_led_chase = 0;
}
