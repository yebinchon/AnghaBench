
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int trans; int workqueue; int mutex; scalar_t__ is_open; } ;
struct ieee80211_hw {int dummy; } ;


 int IWL_DEBUG_MAC80211 (struct iwl_priv*,char*) ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 int flush_workqueue (int ) ;
 int iwl_cancel_deferred_work (struct iwl_priv*) ;
 int iwl_down (struct iwl_priv*) ;
 int iwl_trans_stop_hw (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwlagn_mac_stop(struct ieee80211_hw *hw)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);

 IWL_DEBUG_MAC80211(priv, "enter\n");

 if (!priv->is_open)
  return;

 priv->is_open = 0;

 mutex_lock(&priv->mutex);
 iwl_down(priv);
 mutex_unlock(&priv->mutex);

 iwl_cancel_deferred_work(priv);

 flush_workqueue(priv->workqueue);





 iwl_trans_stop_hw(priv->trans, 0);

 IWL_DEBUG_MAC80211(priv, "leave\n");
}
