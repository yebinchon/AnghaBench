
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; int status; } ;
struct ieee80211_hw {int dummy; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 int iwl_mvm_restart_cleanup (struct iwl_mvm*) ;
 int iwl_mvm_up (struct iwl_mvm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int iwl_mvm_mac_start(struct ieee80211_hw *hw)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 int ret;

 mutex_lock(&mvm->mutex);


 if (test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status))
  iwl_mvm_restart_cleanup(mvm);

 ret = iwl_mvm_up(mvm);
 mutex_unlock(&mvm->mutex);

 return ret;
}
