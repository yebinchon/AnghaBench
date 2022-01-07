
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int POWER_CSTATE ;
 int X86_FEATURE_CLFLUSH_MONITOR ;
 int __monitor (void*,int ,int ) ;
 int __sti_mwait (int ,int ) ;
 int clflush (void*) ;
 scalar_t__ cpu_has (int *,int ) ;
 int current_cpu_data ;
 TYPE_1__* current_thread_info () ;
 int local_irq_enable () ;
 int need_resched () ;
 int smp_mb () ;
 int smp_processor_id () ;
 int trace_power_start (int ,int,int ) ;

__attribute__((used)) static void mwait_idle(void)
{
 if (!need_resched()) {
  trace_power_start(POWER_CSTATE, 1, smp_processor_id());
  if (cpu_has(&current_cpu_data, X86_FEATURE_CLFLUSH_MONITOR))
   clflush((void *)&current_thread_info()->flags);

  __monitor((void *)&current_thread_info()->flags, 0, 0);
  smp_mb();
  if (!need_resched())
   __sti_mwait(0, 0);
  else
   local_irq_enable();
 } else
  local_irq_enable();
}
