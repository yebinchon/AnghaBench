
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_priv {scalar_t__ fw_mutex_owner; int fw_mutex_depth; int fw_mutex; int hw_restart_in_progress; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;


 scalar_t__ current ;
 int ieee80211_stop_queues (struct ieee80211_hw*) ;
 int ieee80211_wake_queues (struct ieee80211_hw*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int mwl8k_tx_wait_empty (struct ieee80211_hw*) ;

__attribute__((used)) static int mwl8k_fw_lock(struct ieee80211_hw *hw)
{
 struct mwl8k_priv *priv = hw->priv;

 if (priv->fw_mutex_owner != current) {
  int rc;

  mutex_lock(&priv->fw_mutex);
  ieee80211_stop_queues(hw);

  rc = mwl8k_tx_wait_empty(hw);
  if (rc) {
   if (!priv->hw_restart_in_progress)
    ieee80211_wake_queues(hw);

   mutex_unlock(&priv->fw_mutex);

   return rc;
  }

  priv->fw_mutex_owner = current;
 }

 priv->fw_mutex_depth++;

 return 0;
}
