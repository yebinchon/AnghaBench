
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_halt () ;

void platform_restart(void)
{
 platform_halt();
}
