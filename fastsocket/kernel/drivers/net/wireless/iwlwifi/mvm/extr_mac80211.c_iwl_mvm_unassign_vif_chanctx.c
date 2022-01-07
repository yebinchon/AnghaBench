
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_vif {int monitor_active; int * phy_ctxt; int time_event_data; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_chanctx_conf {int dummy; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int NL80211_IFTYPE_AP ;

 int iwl_mvm_binding_remove_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_remove_time_event (struct iwl_mvm*,struct iwl_mvm_vif*,int *) ;
 int iwl_mvm_update_quotas (struct iwl_mvm*,int *) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_unassign_vif_chanctx(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif,
      struct ieee80211_chanctx_conf *ctx)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 mutex_lock(&mvm->mutex);

 iwl_mvm_remove_time_event(mvm, mvmvif, &mvmvif->time_event_data);

 if (vif->type == NL80211_IFTYPE_AP)
  goto out_unlock;

 switch (vif->type) {
 case 128:
  mvmvif->monitor_active = 0;
  iwl_mvm_update_quotas(mvm, ((void*)0));
  break;
 default:
  break;
 }

 iwl_mvm_binding_remove_vif(mvm, vif);
out_unlock:
 mvmvif->phy_ctxt = ((void*)0);
 mutex_unlock(&mvm->mutex);
}
