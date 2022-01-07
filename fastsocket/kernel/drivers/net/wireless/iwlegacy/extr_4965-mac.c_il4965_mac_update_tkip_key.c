
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct il_priv {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int dummy; } ;
struct ieee80211_hw {struct il_priv* priv; } ;


 int D_MAC80211 (char*) ;
 int il4965_update_tkip_key (struct il_priv*,struct ieee80211_key_conf*,struct ieee80211_sta*,int ,int *) ;

void
il4965_mac_update_tkip_key(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
      struct ieee80211_key_conf *keyconf,
      struct ieee80211_sta *sta, u32 iv32, u16 * phase1key)
{
 struct il_priv *il = hw->priv;

 D_MAC80211("enter\n");

 il4965_update_tkip_key(il, keyconf, sta, iv32, phase1key);

 D_MAC80211("leave\n");
}
