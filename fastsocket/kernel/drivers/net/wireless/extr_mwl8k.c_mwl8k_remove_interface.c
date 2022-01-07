
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_vif {int dummy; } ;
struct mwl8k_priv {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; int addr; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;


 struct mwl8k_vif* MWL8K_VIF (struct ieee80211_vif*) ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int mwl8k_cmd_del_mac_addr (struct ieee80211_hw*,struct ieee80211_vif*,int ) ;
 int mwl8k_cmd_set_new_stn_del (struct ieee80211_hw*,struct ieee80211_vif*,int ) ;
 int mwl8k_remove_vif (struct mwl8k_priv*,struct mwl8k_vif*) ;

__attribute__((used)) static void mwl8k_remove_interface(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif)
{
 struct mwl8k_priv *priv = hw->priv;
 struct mwl8k_vif *mwl8k_vif = MWL8K_VIF(vif);

 if (vif->type == NL80211_IFTYPE_AP)
  mwl8k_cmd_set_new_stn_del(hw, vif, vif->addr);

 mwl8k_cmd_del_mac_addr(hw, vif, vif->addr);

 mwl8k_remove_vif(priv, mwl8k_vif);
}
