
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_cpu_local_tick_fn ;
 int smp_call_function (int *,int *,int) ;

void
xen_timer_resume_on_aps(void)
{
 smp_call_function(&ia64_cpu_local_tick_fn, ((void*)0), 1);
}
