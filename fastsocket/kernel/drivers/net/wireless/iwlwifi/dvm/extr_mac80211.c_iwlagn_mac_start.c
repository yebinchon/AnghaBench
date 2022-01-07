
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int is_open; int status; int mutex; } ;
struct ieee80211_hw {int dummy; } ;


 int EIO ;
 int IWL_DEBUG_INFO (struct iwl_priv*,char*) ;
 int IWL_DEBUG_MAC80211 (struct iwl_priv*,char*) ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 int STATUS_READY ;
 scalar_t__ WARN_ON (int) ;
 int __iwl_up (struct iwl_priv*) ;
 int iwlagn_led_enable (struct iwl_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int iwlagn_mac_start(struct ieee80211_hw *hw)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);
 int ret;

 IWL_DEBUG_MAC80211(priv, "enter\n");


 mutex_lock(&priv->mutex);
 ret = __iwl_up(priv);
 mutex_unlock(&priv->mutex);
 if (ret)
  return ret;

 IWL_DEBUG_INFO(priv, "Start UP work done.\n");


 if (WARN_ON(!test_bit(STATUS_READY, &priv->status)))
  ret = -EIO;

 iwlagn_led_enable(priv);

 priv->is_open = 1;
 IWL_DEBUG_MAC80211(priv, "leave\n");
 return 0;
}
