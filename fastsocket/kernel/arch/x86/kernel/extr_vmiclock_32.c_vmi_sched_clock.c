
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* get_cycle_counter ) (int ) ;} ;


 int VMI_CYCLES_AVAILABLE ;
 unsigned long long cycles_2_ns (int ) ;
 int stub1 (int ) ;
 TYPE_1__ vmi_timer_ops ;

unsigned long long vmi_sched_clock(void)
{
 return cycles_2_ns(vmi_timer_ops.get_cycle_counter(VMI_CYCLES_AVAILABLE));
}
