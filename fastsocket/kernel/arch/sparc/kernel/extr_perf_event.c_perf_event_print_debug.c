
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int (* read ) () ;} ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__* pcr_ops ;
 int pr_info (char*,...) ;
 int read_pic (int ) ;
 int smp_processor_id () ;
 int sparc_pmu ;
 int stub1 () ;

void perf_event_print_debug(void)
{
 unsigned long flags;
 u64 pcr, pic;
 int cpu;

 if (!sparc_pmu)
  return;

 local_irq_save(flags);

 cpu = smp_processor_id();

 pcr = pcr_ops->read();
 read_pic(pic);

 pr_info("\n");
 pr_info("CPU#%d: PCR[%016llx] PIC[%016llx]\n",
  cpu, pcr, pic);

 local_irq_restore(flags);
}
