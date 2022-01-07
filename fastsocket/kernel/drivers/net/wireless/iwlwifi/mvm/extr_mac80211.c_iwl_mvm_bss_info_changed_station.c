
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm_vif {scalar_t__ ap_sta_id; int time_event_data; } ;
struct iwl_mvm {int vif_count; } ;
struct ieee80211_vif {int addr; } ;
struct ieee80211_bss_conf {scalar_t__ assoc; } ;


 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_DTIM_PERIOD ;
 int BSS_CHANGED_PS ;
 int IWL_DEBUG_MAC80211 (struct iwl_mvm*,char*,int) ;
 int IWL_ERR (struct iwl_mvm*,char*,...) ;
 scalar_t__ IWL_MVM_STATION_COUNT ;
 int iwl_mvm_bt_coex_vif_assoc (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_configure_mcast_filter (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_changed (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_power_update_mode (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_remove_time_event (struct iwl_mvm*,struct iwl_mvm_vif*,int *) ;
 int iwl_mvm_rm_sta_id (struct iwl_mvm*,struct ieee80211_vif*,scalar_t__) ;
 int iwl_mvm_update_quotas (struct iwl_mvm*,struct ieee80211_vif*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_mvm_bss_info_changed_station(struct iwl_mvm *mvm,
          struct ieee80211_vif *vif,
          struct ieee80211_bss_conf *bss_conf,
          u32 changes)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret;

 ret = iwl_mvm_mac_ctxt_changed(mvm, vif);
 if (ret)
  IWL_ERR(mvm, "failed to update MAC %pM\n", vif->addr);

 if (changes & BSS_CHANGED_ASSOC) {
  if (bss_conf->assoc) {

   ret = iwl_mvm_update_quotas(mvm, vif);
   if (ret) {
    IWL_ERR(mvm, "failed to update quotas\n");
    return;
   }
   iwl_mvm_bt_coex_vif_assoc(mvm, vif);
   iwl_mvm_configure_mcast_filter(mvm, vif);
  } else if (mvmvif->ap_sta_id != IWL_MVM_STATION_COUNT) {

   ret = iwl_mvm_rm_sta_id(mvm, vif, mvmvif->ap_sta_id);
   if (ret)
    IWL_ERR(mvm, "failed to remove AP station\n");
   mvmvif->ap_sta_id = IWL_MVM_STATION_COUNT;

   ret = iwl_mvm_update_quotas(mvm, ((void*)0));
   if (ret)
    IWL_ERR(mvm, "failed to update quotas\n");
  }
 } else if (changes & BSS_CHANGED_DTIM_PERIOD) {




  iwl_mvm_remove_time_event(mvm, mvmvif,
       &mvmvif->time_event_data);
 } else if (changes & BSS_CHANGED_PS) {






  IWL_DEBUG_MAC80211(mvm, "Currently %d interfaces active\n",
       mvm->vif_count);
  if (mvm->vif_count == 1) {
   ret = iwl_mvm_power_update_mode(mvm, vif);
   if (ret)
    IWL_ERR(mvm, "failed to update power mode\n");
  }
 }
}
