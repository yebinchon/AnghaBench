
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm_vif {size_t ap_sta_id; } ;
struct iwl_mvm_sta {size_t sta_id; int lock; int tfd_queue_msk; } ;
struct iwl_mvm {int * fw_id_to_mac_id; int * pending_frames; int mutex; } ;
struct TYPE_2__ {scalar_t__ assoc; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;


 int EBUSY ;
 int EINVAL ;
 int * ERR_PTR (int ) ;
 size_t IWL_MVM_STATION_COUNT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ atomic_read (int *) ;
 int iwl_mvm_drain_sta (struct iwl_mvm*,struct iwl_mvm_sta*,int) ;
 int iwl_mvm_flush_tx_path (struct iwl_mvm*,int ,int) ;
 int iwl_mvm_rm_sta_common (struct iwl_mvm*,size_t) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iwl_mvm_rm_sta(struct iwl_mvm *mvm,
     struct ieee80211_vif *vif,
     struct ieee80211_sta *sta)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_sta *mvm_sta = (void *)sta->drv_priv;
 int ret;

 lockdep_assert_held(&mvm->mutex);

 if (vif->type == NL80211_IFTYPE_STATION &&
     mvmvif->ap_sta_id == mvm_sta->sta_id) {

  ret = iwl_mvm_flush_tx_path(mvm, mvm_sta->tfd_queue_msk, 1);






  rcu_assign_pointer(mvm->fw_id_to_mac_id[mvm_sta->sta_id],
       ERR_PTR(-EINVAL));


  if (vif->bss_conf.assoc)
   return ret;


  mvmvif->ap_sta_id = IWL_MVM_STATION_COUNT;
 }





 spin_lock_bh(&mvm_sta->lock);




 if (atomic_read(&mvm->pending_frames[mvm_sta->sta_id])) {
  rcu_assign_pointer(mvm->fw_id_to_mac_id[mvm_sta->sta_id],
       ERR_PTR(-EBUSY));
  spin_unlock_bh(&mvm_sta->lock);
  ret = iwl_mvm_drain_sta(mvm, mvm_sta, 1);
 } else {
  spin_unlock_bh(&mvm_sta->lock);
  ret = iwl_mvm_rm_sta_common(mvm, mvm_sta->sta_id);
  rcu_assign_pointer(mvm->fw_id_to_mac_id[mvm_sta->sta_id], ((void*)0));
 }

 return ret;
}
