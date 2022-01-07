
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idle; int donate_dedicated_cpu; unsigned long wait_state_cycles; } ;


 int HMT_low () ;
 int HMT_medium () ;
 int HMT_very_low () ;
 int SPRN_PURR ;
 int TIF_POLLING_NRFLAG ;
 unsigned long __get_cpu_var (int ) ;
 int cede_processor () ;
 int clear_thread_flag (int ) ;
 scalar_t__ cpu_is_offline (unsigned int) ;
 TYPE_1__* get_lppaca () ;
 unsigned long get_tb () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 unsigned long mfspr (int ) ;
 scalar_t__ need_resched () ;
 int ppc64_runlatch_off () ;
 int set_thread_flag (int ) ;
 int smp_mb () ;
 unsigned int smp_processor_id () ;
 int smt_snooze_delay ;
 unsigned long tb_ticks_per_usec ;

__attribute__((used)) static void pseries_dedicated_idle_sleep(void)
{
 unsigned int cpu = smp_processor_id();
 unsigned long start_snooze;
 unsigned long in_purr, out_purr;





 get_lppaca()->idle = 1;
 get_lppaca()->donate_dedicated_cpu = 1;
 in_purr = mfspr(SPRN_PURR);






 if (__get_cpu_var(smt_snooze_delay)) {
  start_snooze = get_tb() +
   __get_cpu_var(smt_snooze_delay) * tb_ticks_per_usec;
  local_irq_enable();
  set_thread_flag(TIF_POLLING_NRFLAG);

  while (get_tb() < start_snooze) {
   if (need_resched() || cpu_is_offline(cpu))
    goto out;
   ppc64_runlatch_off();
   HMT_low();
   HMT_very_low();
  }

  HMT_medium();
  clear_thread_flag(TIF_POLLING_NRFLAG);
  smp_mb();
  local_irq_disable();
  if (need_resched() || cpu_is_offline(cpu))
   goto out;
 }

 cede_processor();

out:
 HMT_medium();
 out_purr = mfspr(SPRN_PURR);
 get_lppaca()->wait_state_cycles += out_purr - in_purr;
 get_lppaca()->donate_dedicated_cpu = 0;
 get_lppaca()->idle = 0;
}
