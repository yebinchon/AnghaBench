
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mwl8k_vif {TYPE_2__* wep_key_conf; } ;
struct mwl8k_priv {int ap_fw; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_4__ {scalar_t__ ht_supported; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; } ;
struct ieee80211_key_conf {int dummy; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;
struct TYPE_6__ {int peer_id; int is_ampdu_allowed; } ;
struct TYPE_5__ {scalar_t__ enabled; int key; } ;


 struct ieee80211_key_conf* IEEE80211_KEY_CONF (int ) ;
 TYPE_3__* MWL8K_STA (struct ieee80211_sta*) ;
 struct mwl8k_vif* MWL8K_VIF (struct ieee80211_vif*) ;
 int NUM_WEP_KEYS ;
 int SET_KEY ;
 int mwl8k_cmd_set_new_stn_add (struct ieee80211_hw*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int mwl8k_cmd_update_stadb_add (struct ieee80211_hw*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int mwl8k_set_key (struct ieee80211_hw*,int ,struct ieee80211_vif*,struct ieee80211_sta*,struct ieee80211_key_conf*) ;

__attribute__((used)) static int mwl8k_sta_add(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif,
    struct ieee80211_sta *sta)
{
 struct mwl8k_priv *priv = hw->priv;
 int ret;
 int i;
 struct mwl8k_vif *mwl8k_vif = MWL8K_VIF(vif);
 struct ieee80211_key_conf *key;

 if (!priv->ap_fw) {
  ret = mwl8k_cmd_update_stadb_add(hw, vif, sta);
  if (ret >= 0) {
   MWL8K_STA(sta)->peer_id = ret;
   if (sta->ht_cap.ht_supported)
    MWL8K_STA(sta)->is_ampdu_allowed = 1;
   ret = 0;
  }

 } else {
  ret = mwl8k_cmd_set_new_stn_add(hw, vif, sta);
 }

 for (i = 0; i < NUM_WEP_KEYS; i++) {
  key = IEEE80211_KEY_CONF(mwl8k_vif->wep_key_conf[i].key);
  if (mwl8k_vif->wep_key_conf[i].enabled)
   mwl8k_set_key(hw, SET_KEY, vif, sta, key);
 }
 return ret;
}
