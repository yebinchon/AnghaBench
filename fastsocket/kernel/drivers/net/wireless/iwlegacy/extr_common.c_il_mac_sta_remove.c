
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_station_priv_common {int sta_id; } ;
struct il_priv {int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct il_priv* priv; } ;


 int D_MAC80211 (char*,int) ;
 int IL_ERR (char*,int) ;
 int il_remove_station (struct il_priv*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int
il_mac_sta_remove(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
    struct ieee80211_sta *sta)
{
 struct il_priv *il = hw->priv;
 struct il_station_priv_common *sta_common = (void *)sta->drv_priv;
 int ret;

 mutex_lock(&il->mutex);
 D_MAC80211("enter station %pM\n", sta->addr);

 ret = il_remove_station(il, sta_common->sta_id, sta->addr);
 if (ret)
  IL_ERR("Error removing station %pM\n", sta->addr);

 D_MAC80211("leave ret %d\n", ret);
 mutex_unlock(&il->mutex);

 return ret;
}
