
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int mutex; int bssid; int iw_mode; struct ieee80211_vif* vif; } ;
struct ieee80211_vif {int addr; int type; } ;
struct ieee80211_hw {struct il_priv* priv; } ;


 int D_MAC80211 (char*,...) ;
 int ETH_ALEN ;
 int NL80211_IFTYPE_UNSPECIFIED ;
 int WARN_ON (int) ;
 int il_teardown_interface (struct il_priv*,struct ieee80211_vif*) ;
 int memset (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void
il_mac_remove_interface(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct il_priv *il = hw->priv;

 mutex_lock(&il->mutex);
 D_MAC80211("enter: type %d, addr %pM\n", vif->type, vif->addr);

 WARN_ON(il->vif != vif);
 il->vif = ((void*)0);
 il->iw_mode = NL80211_IFTYPE_UNSPECIFIED;
 il_teardown_interface(il, vif);
 memset(il->bssid, 0, ETH_ALEN);

 D_MAC80211("leave\n");
 mutex_unlock(&il->mutex);
}
