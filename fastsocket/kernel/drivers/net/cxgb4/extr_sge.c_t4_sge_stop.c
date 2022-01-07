
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ desc; } ;
struct sge_ofld_txq {int qresume_tsk; TYPE_1__ q; } ;
struct sge_ctrl_txq {int qresume_tsk; TYPE_1__ q; } ;
struct TYPE_4__ {scalar_t__ function; } ;
struct sge {struct sge_ofld_txq* ctrlq; struct sge_ofld_txq* ofldtxq; TYPE_2__ tx_timer; TYPE_2__ rx_timer; } ;
struct adapter {struct sge sge; } ;


 int ARRAY_SIZE (struct sge_ofld_txq*) ;
 int del_timer_sync (TYPE_2__*) ;
 scalar_t__ in_interrupt () ;
 int tasklet_kill (int *) ;

void t4_sge_stop(struct adapter *adap)
{
 int i;
 struct sge *s = &adap->sge;

 if (in_interrupt())
  return;

 if (s->rx_timer.function)
  del_timer_sync(&s->rx_timer);
 if (s->tx_timer.function)
  del_timer_sync(&s->tx_timer);

 for (i = 0; i < ARRAY_SIZE(s->ofldtxq); i++) {
  struct sge_ofld_txq *q = &s->ofldtxq[i];

  if (q->q.desc)
   tasklet_kill(&q->qresume_tsk);
 }
 for (i = 0; i < ARRAY_SIZE(s->ctrlq); i++) {
  struct sge_ctrl_txq *cq = &s->ctrlq[i];

  if (cq->q.desc)
   tasklet_kill(&cq->qresume_tsk);
 }
}
