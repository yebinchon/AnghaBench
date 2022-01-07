
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum exception_code { ____Placeholder_exception_code } exception_code ;


 int ASB2303_7SEGLEDS ;
 int ASB2303_GPIO0DEF ;

void peripheral_leds_display_exception(enum exception_code code)
{
 ASB2303_GPIO0DEF = 0x5555;
 ASB2303_7SEGLEDS = 0x6d;
}
