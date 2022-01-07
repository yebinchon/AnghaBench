
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge {int tx_reclaim_timer; TYPE_1__* adapter; struct cmdQ* cmdQ; } ;
struct cmdQ {int lock; scalar_t__ in_use; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 scalar_t__ A_SG_DOORBELL ;
 int F_CMDQ0_ENABLE ;
 int SGE_CMDQ_N ;
 scalar_t__ TX_RECLAIM_PERIOD ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int reclaim_completed_tx (struct sge*,struct cmdQ*) ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sge_tx_reclaim_cb(unsigned long data)
{
 int i;
 struct sge *sge = (struct sge *)data;

 for (i = 0; i < SGE_CMDQ_N; ++i) {
  struct cmdQ *q = &sge->cmdQ[i];

  if (!spin_trylock(&q->lock))
   continue;

  reclaim_completed_tx(sge, q);
  if (i == 0 && q->in_use) {
   writel(F_CMDQ0_ENABLE, sge->adapter->regs + A_SG_DOORBELL);
  }
  spin_unlock(&q->lock);
 }
 mod_timer(&sge->tx_reclaim_timer, jiffies + TX_RECLAIM_PERIOD);
}
