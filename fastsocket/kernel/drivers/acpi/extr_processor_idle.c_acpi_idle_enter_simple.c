
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_state {int dummy; } ;
struct cpuidle_device {int dummy; } ;
struct acpi_processor_cx {scalar_t__ entry_method; scalar_t__ type; int time; int usage; } ;
struct acpi_processor {int dummy; } ;
typedef int s64 ;
typedef int ktime_t ;
struct TYPE_2__ {int status; } ;


 scalar_t__ ACPI_CSTATE_FFH ;
 int ACPI_FLUSH_CPU_CACHE () ;
 scalar_t__ ACPI_STATE_C3 ;
 int PM_TIMER_TICK_NS ;
 int TS_POLLING ;
 struct acpi_processor* __get_cpu_var (int ) ;
 int acpi_idle_do_entry (struct acpi_processor_cx*) ;
 int acpi_idle_enter_c1 (struct cpuidle_device*,struct cpuidle_state*) ;
 scalar_t__ acpi_idle_suspend ;
 struct acpi_processor_cx* cpuidle_get_statedata (struct cpuidle_state*) ;
 TYPE_1__* current_thread_info () ;
 int ktime_get_real () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_us (int ) ;
 int lapic_timer_state_broadcast (struct acpi_processor*,struct acpi_processor_cx*,int) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int need_resched () ;
 int processors ;
 int sched_clock_idle_sleep_event () ;
 int sched_clock_idle_wakeup_event (int) ;
 int smp_mb () ;
 scalar_t__ unlikely (int) ;
 int us_to_pm_timer_ticks (int) ;

__attribute__((used)) static int acpi_idle_enter_simple(struct cpuidle_device *dev,
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





 lapic_timer_state_broadcast(pr, cx, 1);

 if (cx->type == ACPI_STATE_C3)
  ACPI_FLUSH_CPU_CACHE();

 kt1 = ktime_get_real();

 sched_clock_idle_sleep_event();
 acpi_idle_do_entry(cx);
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
