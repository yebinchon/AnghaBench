
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long (* get_cycle_frequency ) () ;} ;


 int do_div (unsigned long long,int) ;
 unsigned long long stub1 () ;
 TYPE_1__ vmi_timer_ops ;

unsigned long vmi_tsc_khz(void)
{
 unsigned long long khz;
 khz = vmi_timer_ops.get_cycle_frequency();
 (void)do_div(khz, 1000);
 return khz;
}
