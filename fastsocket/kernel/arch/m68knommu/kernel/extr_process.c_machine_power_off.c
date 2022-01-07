
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mach_power_off () ;

void machine_power_off(void)
{
 if (mach_power_off)
  mach_power_off();
 for (;;);
}
