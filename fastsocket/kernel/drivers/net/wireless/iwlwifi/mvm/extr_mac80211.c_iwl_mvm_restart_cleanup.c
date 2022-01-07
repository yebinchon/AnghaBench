
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {scalar_t__ vif_count; int hw; int sta_drained; int fw_key_table; int scan_status; int trans; } ;


 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int IWL_MVM_SCAN_NONE ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct iwl_mvm*) ;
 int ieee80211_remain_on_channel_expired (int ) ;
 int ieee80211_wake_queues (int ) ;
 int iwl_mvm_cleanup_iterator ;
 int iwl_trans_stop_device (int ) ;
 int iwl_trans_stop_hw (int ,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void iwl_mvm_restart_cleanup(struct iwl_mvm *mvm)
{
 iwl_trans_stop_device(mvm->trans);
 iwl_trans_stop_hw(mvm->trans, 0);

 mvm->scan_status = IWL_MVM_SCAN_NONE;


 ieee80211_remain_on_channel_expired(mvm->hw);

 ieee80211_iterate_active_interfaces_atomic(
  mvm->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
  iwl_mvm_cleanup_iterator, mvm);

 memset(mvm->fw_key_table, 0, sizeof(mvm->fw_key_table));
 memset(mvm->sta_drained, 0, sizeof(mvm->sta_drained));

 ieee80211_wake_queues(mvm->hw);

 mvm->vif_count = 0;
}
