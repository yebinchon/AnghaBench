
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad_rx_info {struct bnad_rx_ctrl* rx_ctrl; int rx; } ;
struct bnad_rx_ctrl {int ccb; } ;
struct bnad {int num_rx; int num_rxp_per_rx; int bna_lock; int dim_timer; int run_flags; struct bnad_rx_info* rx_info; int netdev; } ;


 int BNAD_DIM_TIMER_FREQ ;
 int BNAD_RF_DIM_TIMER_RUNNING ;
 int bna_rx_dim_update (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int netif_carrier_ok (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
bnad_dim_timeout(unsigned long data)
{
 struct bnad *bnad = (struct bnad *)data;
 struct bnad_rx_info *rx_info;
 struct bnad_rx_ctrl *rx_ctrl;
 int i, j;
 unsigned long flags;

 if (!netif_carrier_ok(bnad->netdev))
  return;

 spin_lock_irqsave(&bnad->bna_lock, flags);
 for (i = 0; i < bnad->num_rx; i++) {
  rx_info = &bnad->rx_info[i];
  if (!rx_info->rx)
   continue;
  for (j = 0; j < bnad->num_rxp_per_rx; j++) {
   rx_ctrl = &rx_info->rx_ctrl[j];
   if (!rx_ctrl->ccb)
    continue;
   bna_rx_dim_update(rx_ctrl->ccb);
  }
 }


 if (test_bit(BNAD_RF_DIM_TIMER_RUNNING, &bnad->run_flags))
  mod_timer(&bnad->dim_timer,
     jiffies + msecs_to_jiffies(BNAD_DIM_TIMER_FREQ));
 spin_unlock_irqrestore(&bnad->bna_lock, flags);
}
