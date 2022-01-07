
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_priv {int mutex; int trans; int status; } ;
struct ieee80211_hw {int dummy; } ;


 int IWL_DEBUG_MAC80211 (struct iwl_priv*,char*) ;
 int IWL_DEBUG_TX (struct iwl_priv*,char*) ;
 int IWL_ERR (struct iwl_priv*,char*) ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 int STATUS_EXIT_PENDING ;
 scalar_t__ iwl_is_rfkill (struct iwl_priv*) ;
 int iwl_trans_wait_tx_queue_empty (int ) ;
 scalar_t__ iwlagn_txfifo_flush (struct iwl_priv*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void iwlagn_mac_flush(struct ieee80211_hw *hw, u32 queues, bool drop)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);

 mutex_lock(&priv->mutex);
 IWL_DEBUG_MAC80211(priv, "enter\n");

 if (test_bit(STATUS_EXIT_PENDING, &priv->status)) {
  IWL_DEBUG_TX(priv, "Aborting flush due to device shutdown\n");
  goto done;
 }
 if (iwl_is_rfkill(priv)) {
  IWL_DEBUG_TX(priv, "Aborting flush due to RF Kill\n");
  goto done;
 }





 if (drop) {
  IWL_DEBUG_MAC80211(priv, "send flush command\n");
  if (iwlagn_txfifo_flush(priv, 0)) {
   IWL_ERR(priv, "flush request fail\n");
   goto done;
  }
 }
 IWL_DEBUG_MAC80211(priv, "wait transmit/flush all frames\n");
 iwl_trans_wait_tx_queue_empty(priv->trans);
done:
 mutex_unlock(&priv->mutex);
 IWL_DEBUG_MAC80211(priv, "leave\n");
}
