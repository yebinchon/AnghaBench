
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smtc_ipi_q {scalar_t__ resched_flag; int lock; int * head; } ;
struct smtc_ipi {scalar_t__ type; scalar_t__ arg; } ;


 struct smtc_ipi_q* IPIQ ;
 scalar_t__ LINUX_SMP_IPI ;
 int SMP_RESCHEDULE_YOURSELF ;
 int __raw_local_irq_restore (unsigned long) ;
 struct smtc_ipi* __smtc_ipi_dq (struct smtc_ipi_q*) ;
 int ipi_decode (struct smtc_ipi*) ;
 int local_irq_save (unsigned long) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void deferred_smtc_ipi(void)
{
 int cpu = smp_processor_id();
 while (IPIQ[cpu].head != ((void*)0)) {
  struct smtc_ipi_q *q = &IPIQ[cpu];
  struct smtc_ipi *pipi;
  unsigned long flags;





  local_irq_save(flags);
  spin_lock(&q->lock);
  pipi = __smtc_ipi_dq(q);
  spin_unlock(&q->lock);
  if (pipi != ((void*)0)) {
   if (pipi->type == LINUX_SMP_IPI &&
       (int)pipi->arg == SMP_RESCHEDULE_YOURSELF)
    IPIQ[cpu].resched_flag = 0;
   ipi_decode(pipi);
  }






  __raw_local_irq_restore(flags);
 }
}
