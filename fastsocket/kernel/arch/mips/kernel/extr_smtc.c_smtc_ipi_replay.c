
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smtc_ipi_q {int lock; int * head; } ;
struct smtc_ipi {int dummy; } ;
struct TYPE_2__ {int selfipis; } ;


 struct smtc_ipi_q* IPIQ ;
 int __raw_local_irq_restore (unsigned long) ;
 struct smtc_ipi* __smtc_ipi_dq (struct smtc_ipi_q*) ;
 int local_irq_save (unsigned long) ;
 int self_ipi (struct smtc_ipi*) ;
 unsigned int smp_processor_id () ;
 TYPE_1__* smtc_cpu_stats ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void smtc_ipi_replay(void)
{
 unsigned int cpu = smp_processor_id();
 while (IPIQ[cpu].head != ((void*)0)) {
  struct smtc_ipi_q *q = &IPIQ[cpu];
  struct smtc_ipi *pipi;
  unsigned long flags;





  local_irq_save(flags);

  spin_lock(&q->lock);
  pipi = __smtc_ipi_dq(q);
  spin_unlock(&q->lock);



  __raw_local_irq_restore(flags);

  if (pipi) {
   self_ipi(pipi);
   smtc_cpu_stats[cpu].selfipis++;
  }
 }
}
