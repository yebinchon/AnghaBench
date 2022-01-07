
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_priv {scalar_t__ ap_fw; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;


 int mwl8k_cmd_set_new_stn_del (struct ieee80211_hw*,struct ieee80211_vif*,int ) ;
 int mwl8k_cmd_update_stadb_del (struct ieee80211_hw*,struct ieee80211_vif*,int ) ;

__attribute__((used)) static int mwl8k_sta_remove(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       struct ieee80211_sta *sta)
{
 struct mwl8k_priv *priv = hw->priv;

 if (priv->ap_fw)
  return mwl8k_cmd_set_new_stn_del(hw, vif, sta->addr);
 else
  return mwl8k_cmd_update_stadb_del(hw, vif, sta->addr);
}
