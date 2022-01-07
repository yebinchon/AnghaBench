
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smp_processor_id () ;
 int xen_init_missing_ticks_accounting (int ) ;
 int xen_local_tick_resume () ;

__attribute__((used)) static void ia64_cpu_local_tick_fn(void *unused)
{
 xen_local_tick_resume();
 xen_init_missing_ticks_accounting(smp_processor_id());
}
