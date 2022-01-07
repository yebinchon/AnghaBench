
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {int data; int (* function ) (int ) ;scalar_t__ expires; } ;


 int __ctl_load (unsigned long,int ,int ) ;
 int __ctl_store (unsigned long,int ,int ) ;
 int __raw_local_irq_stosm (int) ;
 int _local_bh_enable () ;
 int cpu_relax () ;
 scalar_t__ del_timer (TYPE_1__*) ;
 scalar_t__ get_clock () ;
 int in_interrupt () ;
 scalar_t__ jiffies ;
 int local_bh_disable () ;
 int local_irq_disable () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long long local_tick_disable () ;
 int local_tick_enable (unsigned long long) ;
 TYPE_1__ sclp_request_timer ;
 scalar_t__ sclp_running_state ;
 scalar_t__ sclp_running_state_idle ;
 scalar_t__ sclp_tod_from_jiffies (scalar_t__) ;
 int stub1 (int ) ;
 scalar_t__ timer_pending (TYPE_1__*) ;
 int trace_hardirqs_on () ;

void
sclp_sync_wait(void)
{
 unsigned long long old_tick;
 unsigned long flags;
 unsigned long cr0, cr0_sync;
 u64 timeout;
 int irq_context;



 timeout = 0;
 if (timer_pending(&sclp_request_timer)) {

  timeout = get_clock() +
     sclp_tod_from_jiffies(sclp_request_timer.expires -
      jiffies);
 }
 local_irq_save(flags);

 irq_context = in_interrupt();
 if (!irq_context)
  local_bh_disable();

 old_tick = local_tick_disable();
 trace_hardirqs_on();
 __ctl_store(cr0, 0, 0);
 cr0_sync = cr0;
 cr0_sync &= 0xffff00a0;
 cr0_sync |= 0x00000200;
 __ctl_load(cr0_sync, 0, 0);
 __raw_local_irq_stosm(0x01);

 while (sclp_running_state != sclp_running_state_idle) {

  if (timer_pending(&sclp_request_timer) &&
      get_clock() > timeout &&
      del_timer(&sclp_request_timer))
   sclp_request_timer.function(sclp_request_timer.data);
  cpu_relax();
 }
 local_irq_disable();
 __ctl_load(cr0, 0, 0);
 if (!irq_context)
  _local_bh_enable();
 local_tick_enable(old_tick);
 local_irq_restore(flags);
}
