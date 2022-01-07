
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_vif {int ap_active; int bcast_sta; } ;
struct iwl_mvm {int mutex; scalar_t__ p2p_device_vif; } ;
struct ieee80211_vif {scalar_t__ p2p; } ;
struct ieee80211_hw {int dummy; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int iwl_mvm_binding_add_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_binding_remove_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_add (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_beacon_changed (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_changed (struct iwl_mvm*,scalar_t__) ;
 int iwl_mvm_mac_ctxt_remove (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_send_bcast_sta (struct iwl_mvm*,struct ieee80211_vif*,int *) ;
 int iwl_mvm_send_rm_bcast_sta (struct iwl_mvm*,int *) ;
 int iwl_mvm_update_quotas (struct iwl_mvm*,struct ieee80211_vif*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_mvm_start_ap(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret;

 mutex_lock(&mvm->mutex);


 ret = iwl_mvm_mac_ctxt_beacon_changed(mvm, vif);
 if (ret)
  goto out_unlock;


 ret = iwl_mvm_mac_ctxt_add(mvm, vif);
 if (ret)
  goto out_unlock;


 ret = iwl_mvm_binding_add_vif(mvm, vif);
 if (ret)
  goto out_remove;

 mvmvif->ap_active = 1;



 ret = iwl_mvm_send_bcast_sta(mvm, vif, &mvmvif->bcast_sta);
 if (ret)
  goto out_unbind;

 ret = iwl_mvm_update_quotas(mvm, vif);
 if (ret)
  goto out_rm_bcast;


 if (vif->p2p && mvm->p2p_device_vif)
  iwl_mvm_mac_ctxt_changed(mvm, mvm->p2p_device_vif);

 mutex_unlock(&mvm->mutex);
 return 0;

out_rm_bcast:
 iwl_mvm_send_rm_bcast_sta(mvm, &mvmvif->bcast_sta);
out_unbind:
 iwl_mvm_binding_remove_vif(mvm, vif);
out_remove:
 iwl_mvm_mac_ctxt_remove(mvm, vif);
out_unlock:
 mutex_unlock(&mvm->mutex);
 return ret;
}
