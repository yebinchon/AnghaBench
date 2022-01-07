
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_station_priv {int sta_id; } ;
struct iwl_priv {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;


 int IWL_DEBUG_INFO (struct iwl_priv*,char*,int ) ;
 int IWL_DEBUG_QUIET_RFKILL (struct iwl_priv*,char*,int ) ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int iwl_deactivate_station (struct iwl_priv*,int ,int ) ;
 int iwl_remove_station (struct iwl_priv*,int ,int ) ;

__attribute__((used)) static int iwlagn_mac_sta_remove(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     struct ieee80211_sta *sta)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);
 struct iwl_station_priv *sta_priv = (void *)sta->drv_priv;
 int ret;

 IWL_DEBUG_INFO(priv, "proceeding to remove station %pM\n", sta->addr);

 if (vif->type == NL80211_IFTYPE_STATION) {





  ret = 0;
  iwl_deactivate_station(priv, sta_priv->sta_id, sta->addr);
 } else {
  ret = iwl_remove_station(priv, sta_priv->sta_id, sta->addr);
  if (ret)
   IWL_DEBUG_QUIET_RFKILL(priv,
    "Error removing station %pM\n", sta->addr);
 }
 return ret;
}
