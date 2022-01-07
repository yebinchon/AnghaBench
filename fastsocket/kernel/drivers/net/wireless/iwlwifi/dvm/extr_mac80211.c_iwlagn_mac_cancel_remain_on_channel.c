
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int valid_contexts; int mutex; int hw_roc_duration; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int ) ;
 int EOPNOTSUPP ;
 int IWL_DEBUG_MAC80211 (struct iwl_priv*,char*) ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 int IWL_RXON_CTX_PAN ;
 int iwl_scan_cancel_timeout (struct iwl_priv*,int ) ;
 int iwlagn_disable_roc (struct iwl_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwlagn_mac_cancel_remain_on_channel(struct ieee80211_hw *hw)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);

 if (!(priv->valid_contexts & BIT(IWL_RXON_CTX_PAN)))
  return -EOPNOTSUPP;

 IWL_DEBUG_MAC80211(priv, "enter\n");
 mutex_lock(&priv->mutex);
 iwl_scan_cancel_timeout(priv, priv->hw_roc_duration);
 iwlagn_disable_roc(priv);
 mutex_unlock(&priv->mutex);
 IWL_DEBUG_MAC80211(priv, "leave\n");

 return 0;
}
