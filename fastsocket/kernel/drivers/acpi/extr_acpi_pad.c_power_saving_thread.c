
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct sched_param {int sched_priority; } ;
struct TYPE_2__ {int status; int flags; } ;


 int CLOCK_EVT_NOTIFY_BROADCAST_ENTER ;
 int CLOCK_EVT_NOTIFY_BROADCAST_EXIT ;
 int HZ ;
 int SCHED_RR ;
 int TS_POLLING ;
 int __monitor (void*,int ,int ) ;
 int __mwait (int ,int) ;
 int clockevents_notify (int ,int*) ;
 int current ;
 TYPE_1__* current_thread_info () ;
 int exit_round_robin (unsigned int) ;
 int idle_pct ;
 scalar_t__ jiffies ;
 int kthread_should_stop () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int mark_tsc_unstable (char*) ;
 int need_resched () ;
 int power_saving_mwait_eax ;
 int round_robin_cpu (unsigned int) ;
 int round_robin_time ;
 int sched_setscheduler (int ,int ,struct sched_param*) ;
 int schedule_timeout_killable (int) ;
 int smp_mb () ;
 int smp_processor_id () ;
 int start_critical_timings () ;
 int stop_critical_timings () ;
 int try_to_freeze () ;
 scalar_t__ tsc_detected_unstable ;
 int tsc_marked_unstable ;

__attribute__((used)) static int power_saving_thread(void *data)
{
 struct sched_param param = {.sched_priority = 1};
 int do_sleep;
 unsigned int tsk_index = (unsigned long)data;
 u64 last_jiffies = 0;

 sched_setscheduler(current, SCHED_RR, &param);

 while (!kthread_should_stop()) {
  int cpu;
  u64 expire_time;

  try_to_freeze();


  if (last_jiffies + round_robin_time * HZ < jiffies) {
   last_jiffies = jiffies;
   round_robin_cpu(tsk_index);
  }

  do_sleep = 0;

  current_thread_info()->status &= ~TS_POLLING;




  smp_mb();

  expire_time = jiffies + HZ * (100 - idle_pct) / 100;

  while (!need_resched()) {
   if (tsc_detected_unstable && !tsc_marked_unstable) {

    mark_tsc_unstable("TSC halts in idle");
    tsc_marked_unstable = 1;
   }
   local_irq_disable();
   cpu = smp_processor_id();
   clockevents_notify(CLOCK_EVT_NOTIFY_BROADCAST_ENTER,
    &cpu);
   stop_critical_timings();

   __monitor((void *)&current_thread_info()->flags, 0, 0);
   smp_mb();
   if (!need_resched())
    __mwait(power_saving_mwait_eax, 1);

   start_critical_timings();
   clockevents_notify(CLOCK_EVT_NOTIFY_BROADCAST_EXIT,
    &cpu);
   local_irq_enable();

   if (jiffies > expire_time) {
    do_sleep = 1;
    break;
   }
  }

  current_thread_info()->status |= TS_POLLING;
  if (do_sleep)
   schedule_timeout_killable(HZ * idle_pct / 100);
 }

 exit_round_robin(tsk_index);
 return 0;
}
