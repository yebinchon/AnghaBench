
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int async_handlers_wk; int mutex; int aux_sta; int trans; int roc_done_wk; } ;
struct ieee80211_hw {int dummy; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int cancel_work_sync (int *) ;
 int flush_work (int *) ;
 int iwl_mvm_async_handlers_purge (struct iwl_mvm*) ;
 int iwl_mvm_dealloc_int_sta (struct iwl_mvm*,int *) ;
 int iwl_trans_stop_device (int ) ;
 int iwl_trans_stop_hw (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_mac_stop(struct ieee80211_hw *hw)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);

 flush_work(&mvm->async_handlers_wk);

 mutex_lock(&mvm->mutex);






 cancel_work_sync(&mvm->roc_done_wk);

 iwl_trans_stop_device(mvm->trans);
 iwl_trans_stop_hw(mvm->trans, 0);

 iwl_mvm_async_handlers_purge(mvm);



 iwl_mvm_dealloc_int_sta(mvm, &mvm->aux_sta);

 mutex_unlock(&mvm->mutex);





 cancel_work_sync(&mvm->async_handlers_wk);
}
