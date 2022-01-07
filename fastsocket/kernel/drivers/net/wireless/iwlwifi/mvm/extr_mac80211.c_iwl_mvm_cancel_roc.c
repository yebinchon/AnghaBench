
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; } ;
struct ieee80211_hw {int dummy; } ;


 int IWL_DEBUG_MAC80211 (struct iwl_mvm*,char*) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int iwl_mvm_stop_p2p_roc (struct iwl_mvm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_mvm_cancel_roc(struct ieee80211_hw *hw)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);

 IWL_DEBUG_MAC80211(mvm, "enter\n");

 mutex_lock(&mvm->mutex);
 iwl_mvm_stop_p2p_roc(mvm);
 mutex_unlock(&mvm->mutex);

 IWL_DEBUG_MAC80211(mvm, "leave\n");
 return 0;
}
