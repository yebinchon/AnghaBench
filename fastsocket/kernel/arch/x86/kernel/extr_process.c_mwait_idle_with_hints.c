
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int POWER_CSTATE ;
 int X86_FEATURE_CLFLUSH_MONITOR ;
 int __monitor (void*,int ,int ) ;
 int __mwait (unsigned long,unsigned long) ;
 int clflush (void*) ;
 scalar_t__ cpu_has (int *,int ) ;
 int current_cpu_data ;
 TYPE_1__* current_thread_info () ;
 int need_resched () ;
 int smp_mb () ;
 int smp_processor_id () ;
 int trace_power_start (int ,unsigned long,int ) ;

void mwait_idle_with_hints(unsigned long ax, unsigned long cx)
{
 trace_power_start(POWER_CSTATE, (ax>>4)+1, smp_processor_id());
 if (!need_resched()) {
  if (cpu_has(&current_cpu_data, X86_FEATURE_CLFLUSH_MONITOR))
   clflush((void *)&current_thread_info()->flags);

  __monitor((void *)&current_thread_info()->flags, 0, 0);
  smp_mb();
  if (!need_resched())
   __mwait(ax, cx);
 }
}
