
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm_vif {scalar_t__ ap_sta_id; } ;
struct iwl_d3_iter_data {int error; struct ieee80211_vif* vif; int mvm; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ p2p; } ;


 int IWL_ERR (int ,char*) ;
 scalar_t__ IWL_MVM_STATION_COUNT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_mvm_d3_iface_iterator(void *_data, u8 *mac,
          struct ieee80211_vif *vif)
{
 struct iwl_d3_iter_data *data = _data;
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 if (vif->type != NL80211_IFTYPE_STATION || vif->p2p)
  return;

 if (mvmvif->ap_sta_id == IWL_MVM_STATION_COUNT)
  return;

 if (data->vif) {
  IWL_ERR(data->mvm, "More than one managed interface active!\n");
  data->error = 1;
  return;
 }

 data->vif = vif;
}
