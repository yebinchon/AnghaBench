
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_MCCK_PENDING ;
 int cpu_die () ;
 scalar_t__ cpu_is_offline (int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int local_mcck_disable () ;
 int local_mcck_enable () ;
 scalar_t__ need_resched () ;
 int preempt_enable_no_resched () ;
 int s390_handle_mcck () ;
 int smp_processor_id () ;
 int start_critical_timings () ;
 int stop_critical_timings () ;
 scalar_t__ test_thread_flag (int ) ;
 int trace_hardirqs_on () ;
 int vtime_stop_cpu () ;

__attribute__((used)) static void default_idle(void)
{

 local_irq_disable();
 if (need_resched()) {
  local_irq_enable();
  return;
 }






 local_mcck_disable();
 if (test_thread_flag(TIF_MCCK_PENDING)) {
  local_mcck_enable();
  local_irq_enable();
  s390_handle_mcck();
  return;
 }
 trace_hardirqs_on();

 stop_critical_timings();

 vtime_stop_cpu();

 start_critical_timings();
}
