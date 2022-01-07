
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write_int (char*,int) ;

void set_led(int on)
{
 write_int("/sys/class/leds/hp::hddprotect/brightness", on);
}
