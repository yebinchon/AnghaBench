
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge {int * espibug_skb; scalar_t__ tx_sched; int tx_reclaim_timer; int espibug_timer; TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 scalar_t__ A_SG_CONTROL ;
 int MAX_NPORTS ;
 int del_timer_sync (int *) ;
 scalar_t__ is_T2 (TYPE_1__*) ;
 int kfree_skb (int ) ;
 int readl (scalar_t__) ;
 int tx_sched_stop (struct sge*) ;
 int writel (int ,scalar_t__) ;

void t1_sge_stop(struct sge *sge)
{
 int i;
 writel(0, sge->adapter->regs + A_SG_CONTROL);
 readl(sge->adapter->regs + A_SG_CONTROL);

 if (is_T2(sge->adapter))
  del_timer_sync(&sge->espibug_timer);

 del_timer_sync(&sge->tx_reclaim_timer);
 if (sge->tx_sched)
  tx_sched_stop(sge);

 for (i = 0; i < MAX_NPORTS; i++)
  kfree_skb(sge->espibug_skb[i]);
}
