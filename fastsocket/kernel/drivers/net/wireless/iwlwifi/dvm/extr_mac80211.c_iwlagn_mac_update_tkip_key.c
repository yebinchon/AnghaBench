
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct iwl_priv {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 int iwl_update_tkip_key (struct iwl_priv*,struct ieee80211_vif*,struct ieee80211_key_conf*,struct ieee80211_sta*,int ,int *) ;

__attribute__((used)) static void iwlagn_mac_update_tkip_key(struct ieee80211_hw *hw,
           struct ieee80211_vif *vif,
           struct ieee80211_key_conf *keyconf,
           struct ieee80211_sta *sta,
           u32 iv32, u16 *phase1key)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);

 iwl_update_tkip_key(priv, vif, keyconf, sta, iv32, phase1key);
}
