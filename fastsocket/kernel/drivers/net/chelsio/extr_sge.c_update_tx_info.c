
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge {scalar_t__ stopped_tx_queues; TYPE_1__* tx_sched; struct cmdQ* cmdQ; } ;
struct cmdQ {scalar_t__ processed; scalar_t__ cleaned; scalar_t__ in_use; int status; } ;
struct adapter {scalar_t__ regs; struct sge* sge; } ;
struct TYPE_2__ {int sched_tsk; } ;


 scalar_t__ A_SG_DOORBELL ;
 int CMDQ_STAT_LAST_PKT_DB ;
 int CMDQ_STAT_RUNNING ;
 unsigned int F_CMDQ0_ENABLE ;
 unsigned int F_FL0_ENABLE ;
 unsigned int F_FL1_ENABLE ;
 int clear_bit (int ,int *) ;
 int freelQs_empty (struct sge*) ;
 int restart_tx_queues (struct sge*) ;
 int set_bit (int ,int *) ;
 int tasklet_hi_schedule (int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static unsigned int update_tx_info(struct adapter *adapter,
       unsigned int flags,
       unsigned int pr0)
{
 struct sge *sge = adapter->sge;
 struct cmdQ *cmdq = &sge->cmdQ[0];

 cmdq->processed += pr0;
 if (flags & (F_FL0_ENABLE | F_FL1_ENABLE)) {
  freelQs_empty(sge);
  flags &= ~(F_FL0_ENABLE | F_FL1_ENABLE);
 }
 if (flags & F_CMDQ0_ENABLE) {
  clear_bit(CMDQ_STAT_RUNNING, &cmdq->status);

  if (cmdq->cleaned + cmdq->in_use != cmdq->processed &&
      !test_and_set_bit(CMDQ_STAT_LAST_PKT_DB, &cmdq->status)) {
   set_bit(CMDQ_STAT_RUNNING, &cmdq->status);
   writel(F_CMDQ0_ENABLE, adapter->regs + A_SG_DOORBELL);
  }
  if (sge->tx_sched)
   tasklet_hi_schedule(&sge->tx_sched->sched_tsk);

  flags &= ~F_CMDQ0_ENABLE;
 }

 if (unlikely(sge->stopped_tx_queues != 0))
  restart_tx_queues(sge);

 return flags;
}
