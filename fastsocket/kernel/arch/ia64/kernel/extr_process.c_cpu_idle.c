
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 int TS_POLLING ;
 scalar_t__ can_do_pal_halt ;
 int check_pgt_cache () ;
 scalar_t__ cpu_is_offline (int) ;
 TYPE_1__* current_thread_info () ;
 void default_idle () ;
 void ia64_mark_idle (int) ;
 int min_xtp () ;
 int need_resched () ;
 int normal_xtp () ;
 int play_dead () ;
 void pm_idle () ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int rmb () ;
 int schedule () ;
 int smp_mb () ;
 int smp_processor_id () ;
 void stub1 (int) ;
 void stub2 () ;
 void stub3 (int) ;

void __attribute__((noreturn))
cpu_idle (void)
{
 void (*mark_idle)(int) = ia64_mark_idle;
   int cpu = smp_processor_id();


 while (1) {
  if (can_do_pal_halt) {
   current_thread_info()->status &= ~TS_POLLING;




   smp_mb();
  } else {
   current_thread_info()->status |= TS_POLLING;
  }

  if (!need_resched()) {
   void (*idle)(void);



   rmb();
   if (mark_idle)
    (*mark_idle)(1);

   idle = pm_idle;
   if (!idle)
    idle = default_idle;
   (*idle)();
   if (mark_idle)
    (*mark_idle)(0);



  }
  preempt_enable_no_resched();
  schedule();
  preempt_disable();
  check_pgt_cache();
  if (cpu_is_offline(cpu))
   play_dead();
 }
}
