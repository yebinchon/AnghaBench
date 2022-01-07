
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; int status; } ;
struct ieee80211_hw {int dummy; } ;


 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 int clear_bit (int ,int *) ;
 int iwl_mvm_update_quotas (struct iwl_mvm*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_mac_restart_complete(struct ieee80211_hw *hw)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 int ret;

 mutex_lock(&mvm->mutex);

 clear_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status);
 ret = iwl_mvm_update_quotas(mvm, ((void*)0));
 if (ret)
  IWL_ERR(mvm, "Failed to update quotas after restart (%d)\n",
   ret);

 mutex_unlock(&mvm->mutex);
}
