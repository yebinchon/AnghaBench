
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_rspq {int lock; int unhandled_irqs; } ;
struct sge_qset {int adap; struct sge_rspq rspq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ handle_responses (int ,struct sge_rspq*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t t3_sge_intr_msix_napi(int irq, void *cookie)
{
 struct sge_qset *qs = cookie;
 struct sge_rspq *q = &qs->rspq;

 spin_lock(&q->lock);

 if (handle_responses(qs->adap, q) < 0)
  q->unhandled_irqs++;
 spin_unlock(&q->lock);
 return IRQ_HANDLED;
}
