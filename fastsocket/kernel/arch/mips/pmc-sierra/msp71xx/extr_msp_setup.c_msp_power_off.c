
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msp_halt () ;

void msp_power_off(void)
{
 msp_halt();
}
