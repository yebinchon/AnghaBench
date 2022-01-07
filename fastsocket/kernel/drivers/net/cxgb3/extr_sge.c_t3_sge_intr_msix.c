
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_rspq {int lock; int cidx; int next_holdoff; int cntxt_id; int unhandled_irqs; } ;
struct sge_qset {struct sge_rspq rspq; struct adapter* adap; } ;
struct adapter {int dummy; } ;
typedef int irqreturn_t ;


 int A_SG_GTS ;
 int IRQ_HANDLED ;
 int V_NEWINDEX (int ) ;
 int V_NEWTIMER (int ) ;
 int V_RSPQ (int ) ;
 scalar_t__ process_responses (struct adapter*,struct sge_qset*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t3_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static irqreturn_t t3_sge_intr_msix(int irq, void *cookie)
{
 struct sge_qset *qs = cookie;
 struct adapter *adap = qs->adap;
 struct sge_rspq *q = &qs->rspq;

 spin_lock(&q->lock);
 if (process_responses(adap, qs, -1) == 0)
  q->unhandled_irqs++;
 t3_write_reg(adap, A_SG_GTS, V_RSPQ(q->cntxt_id) |
       V_NEWTIMER(q->next_holdoff) | V_NEWINDEX(q->cidx));
 spin_unlock(&q->lock);
 return IRQ_HANDLED;
}
