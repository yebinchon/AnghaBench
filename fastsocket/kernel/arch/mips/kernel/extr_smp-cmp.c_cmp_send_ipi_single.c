
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipi_call_function (int) ;
 int ipi_resched (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void cmp_send_ipi_single(int cpu, unsigned int action)
{
 unsigned long flags;

 local_irq_save(flags);

 switch (action) {
 case 129:
  ipi_call_function(cpu);
  break;

 case 128:
  ipi_resched(cpu);
  break;
 }

 local_irq_restore(flags);
}
