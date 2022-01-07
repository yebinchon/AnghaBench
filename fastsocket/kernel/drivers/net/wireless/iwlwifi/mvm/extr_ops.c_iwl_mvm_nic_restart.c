
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {scalar_t__ cur_ucode; int scan_status; int hw; int status; int notif_wait; } ;
struct TYPE_2__ {scalar_t__ restart_fw; } ;


 int IWL_ERR (struct iwl_mvm*,char*) ;


 int IWL_MVM_STATUS_IN_HW_RESTART ;
 scalar_t__ IWL_UCODE_REGULAR ;
 int ieee80211_restart_hw (int ) ;
 int ieee80211_scan_completed (int ,int) ;
 int iwl_abort_notification_waits (int *) ;
 TYPE_1__ iwlwifi_mod_params ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void iwl_mvm_nic_restart(struct iwl_mvm *mvm)
{
 iwl_abort_notification_waits(&mvm->notif_wait);







 if (test_and_set_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status)) {
  IWL_ERR(mvm, "Firmware error during reconfiguration! Abort.\n");
 } else if (mvm->cur_ucode == IWL_UCODE_REGULAR &&
     iwlwifi_mod_params.restart_fw) {
  switch (mvm->scan_status) {
  case 129:
   break;
  case 128:
   ieee80211_scan_completed(mvm->hw, 1);
   break;
  }

  ieee80211_restart_hw(mvm->hw);
 }
}
