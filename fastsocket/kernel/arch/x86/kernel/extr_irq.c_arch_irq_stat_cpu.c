
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ irq_threshold_count; scalar_t__ irq_thermal_count; scalar_t__ irq_tlb_count; scalar_t__ irq_call_count; scalar_t__ irq_resched_count; scalar_t__ x86_platform_ipis; scalar_t__ apic_irq_work_irqs; scalar_t__ apic_perf_irqs; scalar_t__ irq_spurious_count; scalar_t__ apic_timer_irqs; int __nmi_count; } ;


 TYPE_1__* irq_stats (unsigned int) ;
 int mce_exception_count ;
 int mce_poll_count ;
 scalar_t__ per_cpu (int ,unsigned int) ;
 scalar_t__ x86_platform_ipi_callback ;

u64 arch_irq_stat_cpu(unsigned int cpu)
{
 u64 sum = irq_stats(cpu)->__nmi_count;







 if (x86_platform_ipi_callback)
  sum += irq_stats(cpu)->x86_platform_ipis;
 return sum;
}
