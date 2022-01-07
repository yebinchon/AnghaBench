
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sge {scalar_t__ espibug_timeout; int espibug_timer; TYPE_1__* adapter; int tx_reclaim_timer; int sge_control; int * freelQ; } ;
struct TYPE_3__ {scalar_t__ regs; } ;


 scalar_t__ A_SG_CONTROL ;
 int F_FL0_ENABLE ;
 int F_FL1_ENABLE ;
 scalar_t__ TX_RECLAIM_PERIOD ;
 int doorbell_pio (TYPE_1__*,int) ;
 scalar_t__ is_T2 (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int readl (scalar_t__) ;
 int refill_free_list (struct sge*,int *) ;
 int writel (int ,scalar_t__) ;

void t1_sge_start(struct sge *sge)
{
 refill_free_list(sge, &sge->freelQ[0]);
 refill_free_list(sge, &sge->freelQ[1]);

 writel(sge->sge_control, sge->adapter->regs + A_SG_CONTROL);
 doorbell_pio(sge->adapter, F_FL0_ENABLE | F_FL1_ENABLE);
 readl(sge->adapter->regs + A_SG_CONTROL);

 mod_timer(&sge->tx_reclaim_timer, jiffies + TX_RECLAIM_PERIOD);

 if (is_T2(sge->adapter))
  mod_timer(&sge->espibug_timer, jiffies + sge->espibug_timeout);
}
