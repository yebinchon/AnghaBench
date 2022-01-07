
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PM_SUSPEND_MEM ;
 scalar_t__ target_state ;

int at91_suspend_entering_slow_clock(void)
{
 return (target_state == PM_SUSPEND_MEM);
}
