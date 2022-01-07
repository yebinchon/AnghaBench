
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_clear (int ,int ) ;
 int cpu_halt () ;
 int cpu_online_map ;
 int local_irq_disable () ;
 int max_xtp () ;
 int smp_processor_id () ;

__attribute__((used)) static void
stop_this_cpu(void)
{



 cpu_clear(smp_processor_id(), cpu_online_map);
 max_xtp();
 local_irq_disable();
 cpu_halt();
}
