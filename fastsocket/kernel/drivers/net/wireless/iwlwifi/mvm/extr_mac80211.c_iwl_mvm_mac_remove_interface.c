
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_vif {int * phy_ctxt; int bcast_sta; } ;
struct iwl_mvm {int vif_count; int mutex; int hw; int * p2p_device_vif; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_hw {int dummy; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int IWL_DEBUG_MAC80211 (struct iwl_mvm*,char*,int) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 int ieee80211_iterate_active_interfaces (int ,int ,int ,struct iwl_mvm*) ;
 int iwl_mvm_binding_remove_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_dealloc_int_sta (struct iwl_mvm*,int *) ;
 int iwl_mvm_mac_ctxt_release (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_remove (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_phy_ctxt_remove (struct iwl_mvm*,int *) ;
 int iwl_mvm_power_update_iterator ;
 int iwl_mvm_prepare_mac_removal (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_rm_bcast_sta (struct iwl_mvm*,int *) ;
 int iwl_mvm_vif_dbgfs_clean (struct iwl_mvm*,struct ieee80211_vif*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_mac_remove_interface(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 iwl_mvm_prepare_mac_removal(mvm, vif);

 mutex_lock(&mvm->mutex);

 iwl_mvm_vif_dbgfs_clean(mvm, vif);





 if (vif->type == NL80211_IFTYPE_AP) {
  iwl_mvm_dealloc_int_sta(mvm, &mvmvif->bcast_sta);
  goto out_release;
 }

 if (vif->type == NL80211_IFTYPE_P2P_DEVICE) {
  mvm->p2p_device_vif = ((void*)0);
  iwl_mvm_rm_bcast_sta(mvm, &mvmvif->bcast_sta);
  iwl_mvm_binding_remove_vif(mvm, vif);
  iwl_mvm_phy_ctxt_remove(mvm, mvmvif->phy_ctxt);
  mvmvif->phy_ctxt = ((void*)0);
 }







 if (mvm->vif_count && vif->type != NL80211_IFTYPE_P2P_DEVICE)
  mvm->vif_count--;
 IWL_DEBUG_MAC80211(mvm, "Currently %d interfaces active\n",
      mvm->vif_count);
 if (mvm->vif_count == 1) {
  ieee80211_iterate_active_interfaces(
     mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
     iwl_mvm_power_update_iterator, mvm);
 }

 iwl_mvm_mac_ctxt_remove(mvm, vif);

out_release:
 iwl_mvm_mac_ctxt_release(mvm, vif);
 mutex_unlock(&mvm->mutex);
}
