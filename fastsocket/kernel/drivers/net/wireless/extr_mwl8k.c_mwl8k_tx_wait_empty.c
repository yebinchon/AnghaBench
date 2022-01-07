
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_priv {int hw_restart_in_progress; scalar_t__ hw_restart_owner; int pending_tx_pkts; int tx_lock; int * tx_wait; int fw_reload; int watchdog_event_pending; } ;
struct ieee80211_hw {int wiphy; struct mwl8k_priv* priv; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int EBUSY ;
 int ETIMEDOUT ;
 int MWL8K_TX_WAIT_TIMEOUT_MS ;
 int WARN_ON (int) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ current ;
 int ieee80211_queue_work (struct ieee80211_hw*,int *) ;
 int might_sleep () ;
 int msecs_to_jiffies (int ) ;
 int mwl8k_dump_tx_rings (struct ieee80211_hw*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tx_wait ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int wiphy_err (int ,char*,int ) ;
 int wiphy_notice (int ,char*,...) ;

__attribute__((used)) static int mwl8k_tx_wait_empty(struct ieee80211_hw *hw)
{
 struct mwl8k_priv *priv = hw->priv;
 DECLARE_COMPLETION_ONSTACK(tx_wait);
 int retry;
 int rc;

 might_sleep();






 if (priv->hw_restart_in_progress) {
  if (priv->hw_restart_owner == current)
   return 0;
  else
   return -EBUSY;
 }

 if (atomic_read(&priv->watchdog_event_pending))
  return 0;





 if (!priv->pending_tx_pkts)
  return 0;

 retry = 0;
 rc = 0;

 spin_lock_bh(&priv->tx_lock);
 priv->tx_wait = &tx_wait;
 while (!rc) {
  int oldcount;
  unsigned long timeout;

  oldcount = priv->pending_tx_pkts;

  spin_unlock_bh(&priv->tx_lock);
  timeout = wait_for_completion_timeout(&tx_wait,
       msecs_to_jiffies(MWL8K_TX_WAIT_TIMEOUT_MS));

  if (atomic_read(&priv->watchdog_event_pending)) {
   spin_lock_bh(&priv->tx_lock);
   priv->tx_wait = ((void*)0);
   spin_unlock_bh(&priv->tx_lock);
   return 0;
  }

  spin_lock_bh(&priv->tx_lock);

  if (timeout) {
   WARN_ON(priv->pending_tx_pkts);
   if (retry)
    wiphy_notice(hw->wiphy, "tx rings drained\n");
   break;
  }

  if (priv->pending_tx_pkts < oldcount) {
   wiphy_notice(hw->wiphy,
         "waiting for tx rings to drain (%d -> %d pkts)\n",
         oldcount, priv->pending_tx_pkts);
   retry = 1;
   continue;
  }

  priv->tx_wait = ((void*)0);

  wiphy_err(hw->wiphy, "tx rings stuck for %d ms\n",
     MWL8K_TX_WAIT_TIMEOUT_MS);
  mwl8k_dump_tx_rings(hw);
  priv->hw_restart_in_progress = 1;
  ieee80211_queue_work(hw, &priv->fw_reload);

  rc = -ETIMEDOUT;
 }
 priv->tx_wait = ((void*)0);
 spin_unlock_bh(&priv->tx_lock);

 return rc;
}
