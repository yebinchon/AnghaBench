
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_priv {int poll_tx_task; scalar_t__ regs; int tx_lock; int * tx_wait; int pending_tx_pkts; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;


 int MWL8K_A2H_INT_TX_DONE ;
 scalar_t__ MWL8K_HIU_A2H_INTERRUPT_STATUS ;
 int complete (int *) ;
 int mwl8k_tx_queues (struct mwl8k_priv*) ;
 scalar_t__ mwl8k_txq_reclaim (struct ieee80211_hw*,int,int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tasklet_schedule (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mwl8k_tx_poll(unsigned long data)
{
 struct ieee80211_hw *hw = (struct ieee80211_hw *)data;
 struct mwl8k_priv *priv = hw->priv;
 int limit;
 int i;

 limit = 32;

 spin_lock_bh(&priv->tx_lock);

 for (i = 0; i < mwl8k_tx_queues(priv); i++)
  limit -= mwl8k_txq_reclaim(hw, i, limit, 0);

 if (!priv->pending_tx_pkts && priv->tx_wait != ((void*)0)) {
  complete(priv->tx_wait);
  priv->tx_wait = ((void*)0);
 }

 spin_unlock_bh(&priv->tx_lock);

 if (limit) {
  writel(~MWL8K_A2H_INT_TX_DONE,
         priv->regs + MWL8K_HIU_A2H_INTERRUPT_STATUS);
 } else {
  tasklet_schedule(&priv->poll_tx_task);
 }
}
