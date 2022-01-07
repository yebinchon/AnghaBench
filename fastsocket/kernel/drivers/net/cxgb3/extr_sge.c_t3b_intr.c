
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sge_rspq {int lock; } ;
struct TYPE_3__ {TYPE_2__* qs; } ;
struct adapter {TYPE_1__ sge; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {struct sge_rspq rspq; } ;


 int A_PL_CLI ;
 int A_SG_DATA_INTR ;
 int F_ERRINTR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ likely (int) ;
 int process_responses_gts (struct adapter*,struct sge_rspq*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_slow_intr_handler (struct adapter*) ;
 int t3_write_reg (struct adapter*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t t3b_intr(int irq, void *cookie)
{
 u32 map;
 struct adapter *adap = cookie;
 struct sge_rspq *q0 = &adap->sge.qs[0].rspq;

 t3_write_reg(adap, A_PL_CLI, 0);
 map = t3_read_reg(adap, A_SG_DATA_INTR);

 if (unlikely(!map))
  return IRQ_NONE;

 spin_lock(&q0->lock);

 if (unlikely(map & F_ERRINTR))
  t3_slow_intr_handler(adap);

 if (likely(map & 1))
  process_responses_gts(adap, q0);

 if (map & 2)
  process_responses_gts(adap, &adap->sge.qs[1].rspq);

 spin_unlock(&q0->lock);
 return IRQ_HANDLED;
}
