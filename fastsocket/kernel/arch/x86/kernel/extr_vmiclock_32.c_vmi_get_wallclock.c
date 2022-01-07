
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long (* get_wallclock ) () ;} ;


 int do_div (unsigned long long,int) ;
 unsigned long long stub1 () ;
 TYPE_1__ vmi_timer_ops ;

unsigned long vmi_get_wallclock(void)
{
 unsigned long long wallclock;
 wallclock = vmi_timer_ops.get_wallclock();
 (void)do_div(wallclock, 1000000000);

 return wallclock;
}
