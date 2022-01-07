
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* save_sched_clock_state ) () ;} ;


 int __save_processor_state (int *) ;
 int saved_context ;
 int stub1 () ;
 TYPE_1__ x86_platform ;

void save_processor_state(void)
{
 __save_processor_state(&saved_context);
 x86_platform.save_sched_clock_state();
}
