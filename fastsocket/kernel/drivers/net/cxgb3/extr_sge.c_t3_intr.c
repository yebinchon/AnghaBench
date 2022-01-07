
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sge_rspq {size_t cidx; int lock; int * desc; } ;
struct TYPE_6__ {int nports; } ;
struct TYPE_5__ {TYPE_1__* qs; } ;
struct adapter {TYPE_3__ params; TYPE_2__ sge; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {struct sge_rspq rspq; } ;


 int A_PL_CLI ;
 int IRQ_RETVAL (int) ;
 int is_new_response (int *,struct sge_rspq*) ;
 scalar_t__ likely (int) ;
 int process_responses_gts (struct adapter*,struct sge_rspq*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_slow_intr_handler (struct adapter*) ;
 int t3_write_reg (struct adapter*,int ,int ) ;

__attribute__((used)) static irqreturn_t t3_intr(int irq, void *cookie)
{
 int work_done, w0, w1;
 struct adapter *adap = cookie;
 struct sge_rspq *q0 = &adap->sge.qs[0].rspq;
 struct sge_rspq *q1 = &adap->sge.qs[1].rspq;

 spin_lock(&q0->lock);

 w0 = is_new_response(&q0->desc[q0->cidx], q0);
 w1 = adap->params.nports == 2 &&
     is_new_response(&q1->desc[q1->cidx], q1);

 if (likely(w0 | w1)) {
  t3_write_reg(adap, A_PL_CLI, 0);
  t3_read_reg(adap, A_PL_CLI);

  if (likely(w0))
   process_responses_gts(adap, q0);

  if (w1)
   process_responses_gts(adap, q1);

  work_done = w0 | w1;
 } else
  work_done = t3_slow_intr_handler(adap);

 spin_unlock(&q0->lock);
 return IRQ_RETVAL(work_done != 0);
}
