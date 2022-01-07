
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_bss_conf {int dummy; } ;


 int BSS_CHANGED_BEACON ;
 int IWL_WARN (struct iwl_mvm*,char*) ;
 scalar_t__ iwl_mvm_mac_ctxt_beacon_changed (struct iwl_mvm*,struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_mvm_bss_info_changed_ap(struct iwl_mvm *mvm,
     struct ieee80211_vif *vif,
     struct ieee80211_bss_conf *bss_conf,
     u32 changes)
{

 if (changes & BSS_CHANGED_BEACON) {
  if (iwl_mvm_mac_ctxt_beacon_changed(mvm, vif))
   IWL_WARN(mvm, "Failed updating beacon data\n");
 }
}
