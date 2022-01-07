
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cpuidle_state {int dummy; } ;
struct cpuidle_device {TYPE_2__* safe_state; TYPE_2__* last_state; } ;
struct acpi_processor_cx {scalar_t__ entry_method; int time; int usage; int bm_sts_skip; } ;
struct TYPE_4__ {scalar_t__ bm_control; scalar_t__ bm_check; } ;
struct acpi_processor {TYPE_1__ flags; } ;
typedef int s64 ;
typedef int ktime_t ;
struct TYPE_6__ {int status; } ;
struct TYPE_5__ {int (* enter ) (struct cpuidle_device*,TYPE_2__*) ;} ;


 int ACPI_BITREG_ARB_DISABLE ;
 scalar_t__ ACPI_CSTATE_FFH ;
 int ACPI_FLUSH_CPU_CACHE () ;
 int PM_TIMER_TICK_NS ;
 int TS_POLLING ;
 struct acpi_processor* __get_cpu_var (int ) ;
 scalar_t__ acpi_idle_bm_check () ;
 int acpi_idle_do_entry (struct acpi_processor_cx*) ;
 int acpi_idle_enter_c1 (struct cpuidle_device*,struct cpuidle_state*) ;
 scalar_t__ acpi_idle_suspend ;
 int acpi_safe_halt () ;
 int acpi_unlazy_tlb (int ) ;
 int acpi_write_bit_register (int ,int) ;
 scalar_t__ c3_cpu_count ;
 int c3_lock ;
 struct acpi_processor_cx* cpuidle_get_statedata (struct cpuidle_state*) ;
 TYPE_3__* current_thread_info () ;
 int ktime_get_real () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_us (int ) ;
 int lapic_timer_state_broadcast (struct acpi_processor*,struct acpi_processor_cx*,int) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int need_resched () ;
 scalar_t__ num_online_cpus () ;
 int processors ;
 int sched_clock_idle_sleep_event () ;
 int sched_clock_idle_wakeup_event (int) ;
 int smp_mb () ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct cpuidle_device*,TYPE_2__*) ;
 scalar_t__ unlikely (int) ;
 int us_to_pm_timer_ticks (int) ;

__attribute__((used)) static int acpi_idle_enter_bm(struct cpuidle_device *dev,
         struct cpuidle_state *state)
{
 struct acpi_processor *pr;
 struct acpi_processor_cx *cx = cpuidle_get_statedata(state);
 ktime_t kt1, kt2;
 s64 idle_time;
 s64 sleep_ticks = 0;


 pr = __get_cpu_var(processors);

 if (unlikely(!pr))
  return 0;

 if (acpi_idle_suspend)
  return(acpi_idle_enter_c1(dev, state));

 if (!cx->bm_sts_skip && acpi_idle_bm_check()) {
  if (dev->safe_state) {
   dev->last_state = dev->safe_state;
   return dev->safe_state->enter(dev, dev->safe_state);
  } else {
   local_irq_disable();
   acpi_safe_halt();
   local_irq_enable();
   return 0;
  }
 }

 local_irq_disable();
 if (cx->entry_method != ACPI_CSTATE_FFH) {
  current_thread_info()->status &= ~TS_POLLING;




  smp_mb();
 }

 if (unlikely(need_resched())) {
  current_thread_info()->status |= TS_POLLING;
  local_irq_enable();
  return 0;
 }

 acpi_unlazy_tlb(smp_processor_id());


 sched_clock_idle_sleep_event();




 lapic_timer_state_broadcast(pr, cx, 1);

 kt1 = ktime_get_real();
 if (pr->flags.bm_check && pr->flags.bm_control) {
  spin_lock(&c3_lock);
  c3_cpu_count++;

  if (c3_cpu_count == num_online_cpus())
   acpi_write_bit_register(ACPI_BITREG_ARB_DISABLE, 1);
  spin_unlock(&c3_lock);
 } else if (!pr->flags.bm_check) {
  ACPI_FLUSH_CPU_CACHE();
 }

 acpi_idle_do_entry(cx);


 if (pr->flags.bm_check && pr->flags.bm_control) {
  spin_lock(&c3_lock);
  acpi_write_bit_register(ACPI_BITREG_ARB_DISABLE, 0);
  c3_cpu_count--;
  spin_unlock(&c3_lock);
 }
 kt2 = ktime_get_real();
 idle_time = ktime_to_us(ktime_sub(kt2, kt1));

 sleep_ticks = us_to_pm_timer_ticks(idle_time);

 sched_clock_idle_wakeup_event(sleep_ticks*PM_TIMER_TICK_NS);

 local_irq_enable();
 current_thread_info()->status |= TS_POLLING;

 cx->usage++;

 lapic_timer_state_broadcast(pr, cx, 0);
 cx->time += sleep_ticks;
 return idle_time;
}
