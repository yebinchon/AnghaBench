
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int hw; int last_bt_notif; } ;
struct iwl_bt_iterator_data {int reduced_tx_power; scalar_t__ num_bss_ifaces; int * notif; struct iwl_mvm* mvm; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct iwl_bt_iterator_data*) ;
 int iwl_mvm_bt_notif_iterator ;
 scalar_t__ iwl_mvm_bt_udpate_ctrl_kill_msk (struct iwl_mvm*,int) ;

__attribute__((used)) static void iwl_mvm_bt_coex_notif_handle(struct iwl_mvm *mvm)
{
 struct iwl_bt_iterator_data data = {
  .mvm = mvm,
  .notif = &mvm->last_bt_notif,
  .reduced_tx_power = 1,
 };

 ieee80211_iterate_active_interfaces_atomic(
     mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
     iwl_mvm_bt_notif_iterator, &data);






 data.reduced_tx_power = data.reduced_tx_power && data.num_bss_ifaces;

 if (iwl_mvm_bt_udpate_ctrl_kill_msk(mvm, data.reduced_tx_power))
  IWL_ERR(mvm, "Failed to update the ctrl_kill_msk\n");
}
