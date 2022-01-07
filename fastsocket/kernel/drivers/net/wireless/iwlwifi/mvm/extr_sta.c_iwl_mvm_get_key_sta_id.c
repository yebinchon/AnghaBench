
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct iwl_mvm_vif {scalar_t__ ap_sta_id; } ;
struct iwl_mvm_sta {scalar_t__ sta_id; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ drv_priv; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;


 scalar_t__ IWL_MVM_STATION_COUNT ;
 scalar_t__ NL80211_IFTYPE_STATION ;

__attribute__((used)) static u8 iwl_mvm_get_key_sta_id(struct ieee80211_vif *vif,
     struct ieee80211_sta *sta)
{
 struct iwl_mvm_vif *mvmvif = (void *)vif->drv_priv;

 if (sta) {
  struct iwl_mvm_sta *mvm_sta = (void *)sta->drv_priv;

  return mvm_sta->sta_id;
 }






 if (vif->type == NL80211_IFTYPE_STATION &&
     mvmvif->ap_sta_id != IWL_MVM_STATION_COUNT)
  return mvmvif->ap_sta_id;

 return IWL_MVM_STATION_COUNT;
}
