
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POWER_CSTATE ;
 int cpu_relax () ;
 int local_irq_enable () ;
 int need_resched () ;
 int smp_processor_id () ;
 int trace_power_end (int ) ;
 int trace_power_start (int ,int ,int ) ;

__attribute__((used)) static void poll_idle(void)
{
 trace_power_start(POWER_CSTATE, 0, smp_processor_id());
 local_irq_enable();
 while (!need_resched())
  cpu_relax();
 trace_power_end(0);
}
