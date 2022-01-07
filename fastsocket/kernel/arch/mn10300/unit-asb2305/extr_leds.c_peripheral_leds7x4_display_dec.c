
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ASB2305_7SEGLEDS ;
 int* asb2305_led_hex_tbl ;

void peripheral_leds7x4_display_dec(unsigned int val, unsigned int points)
{
 u32 leds;

 leds = asb2305_led_hex_tbl[(val/1000) % 10];
 leds <<= 8;
 leds |= asb2305_led_hex_tbl[(val/100) % 10];
 leds <<= 8;
 leds |= asb2305_led_hex_tbl[(val/10) % 10];
 leds <<= 8;
 leds |= asb2305_led_hex_tbl[val % 10];
 leds |= points^0x01010101;

 ASB2305_7SEGLEDS = leds;
}
