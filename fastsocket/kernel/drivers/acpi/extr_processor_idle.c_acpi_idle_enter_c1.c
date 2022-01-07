
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_state {int dummy; } ;
struct cpuidle_device {int dummy; } ;
struct acpi_processor_cx {int usage; } ;
struct acpi_processor {int dummy; } ;
typedef int s64 ;
typedef int ktime_t ;


 struct acpi_processor* __get_cpu_var (int ) ;
 int acpi_idle_do_entry (struct acpi_processor_cx*) ;
 scalar_t__ acpi_idle_suspend ;
 int cpu_relax () ;
 struct acpi_processor_cx* cpuidle_get_statedata (struct cpuidle_state*) ;
 int ktime_get_real () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_us (int ) ;
 int lapic_timer_state_broadcast (struct acpi_processor*,struct acpi_processor_cx*,int) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int processors ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int acpi_idle_enter_c1(struct cpuidle_device *dev,
         struct cpuidle_state *state)
{
 ktime_t kt1, kt2;
 s64 idle_time;
 struct acpi_processor *pr;
 struct acpi_processor_cx *cx = cpuidle_get_statedata(state);

 pr = __get_cpu_var(processors);

 if (unlikely(!pr))
  return 0;

 local_irq_disable();


 if (acpi_idle_suspend) {
  local_irq_enable();
  cpu_relax();
  return 0;
 }

 lapic_timer_state_broadcast(pr, cx, 1);
 kt1 = ktime_get_real();
 acpi_idle_do_entry(cx);
 kt2 = ktime_get_real();
 idle_time = ktime_to_us(ktime_sub(kt2, kt1));

 local_irq_enable();
 cx->usage++;
 lapic_timer_state_broadcast(pr, cx, 0);

 return idle_time;
}
