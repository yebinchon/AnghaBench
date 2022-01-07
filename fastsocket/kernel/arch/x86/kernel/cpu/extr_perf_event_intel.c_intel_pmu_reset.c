
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct debug_store {int bts_buffer_base; int bts_index; } ;
struct TYPE_4__ {int ds; } ;
struct TYPE_3__ {int num_counters; int num_counters_fixed; } ;


 scalar_t__ MSR_ARCH_PERFMON_FIXED_CTR0 ;
 int checking_wrmsrl (scalar_t__,unsigned long long) ;
 TYPE_2__ cpu_hw_events ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct debug_store* percpu_read (int ) ;
 int printk (char*,int ) ;
 int smp_processor_id () ;
 TYPE_1__ x86_pmu ;
 scalar_t__ x86_pmu_config_addr (int) ;
 scalar_t__ x86_pmu_event_addr (int) ;

__attribute__((used)) static void intel_pmu_reset(void)
{
 struct debug_store *ds = percpu_read(cpu_hw_events.ds);
 unsigned long flags;
 int idx;

 if (!x86_pmu.num_counters)
  return;

 local_irq_save(flags);

 printk("clearing PMU state on CPU#%d\n", smp_processor_id());

 for (idx = 0; idx < x86_pmu.num_counters; idx++) {
  checking_wrmsrl(x86_pmu_config_addr(idx), 0ull);
  checking_wrmsrl(x86_pmu_event_addr(idx), 0ull);
 }
 for (idx = 0; idx < x86_pmu.num_counters_fixed; idx++)
  checking_wrmsrl(MSR_ARCH_PERFMON_FIXED_CTR0 + idx, 0ull);

 if (ds)
  ds->bts_index = ds->bts_buffer_base;

 local_irq_restore(flags);
}
