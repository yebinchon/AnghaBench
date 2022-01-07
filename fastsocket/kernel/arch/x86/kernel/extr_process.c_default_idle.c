
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 int POWER_CSTATE ;
 int TS_POLLING ;
 int cpu_relax () ;
 TYPE_1__* current_thread_info () ;
 scalar_t__ hlt_use_halt () ;
 int local_irq_enable () ;
 int need_resched () ;
 int safe_halt () ;
 int smp_mb () ;
 int smp_processor_id () ;
 int trace_power_start (int ,int,int ) ;

void default_idle(void)
{
 if (hlt_use_halt()) {
  trace_power_start(POWER_CSTATE, 1, smp_processor_id());
  current_thread_info()->status &= ~TS_POLLING;




  smp_mb();

  if (!need_resched())
   safe_halt();
  else
   local_irq_enable();
  current_thread_info()->status |= TS_POLLING;
 } else {
  local_irq_enable();

  cpu_relax();
 }
}
