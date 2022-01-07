
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {scalar_t__ scan_status; int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct cfg80211_scan_request {scalar_t__ n_channels; } ;


 int EBUSY ;
 int EINVAL ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 scalar_t__ IWL_MVM_SCAN_NONE ;
 scalar_t__ MAX_NUM_SCAN_CHANNELS ;
 int iwl_mvm_scan_request (struct iwl_mvm*,struct ieee80211_vif*,struct cfg80211_scan_request*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_mvm_mac_hw_scan(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          struct cfg80211_scan_request *req)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 int ret;

 if (req->n_channels == 0 || req->n_channels > MAX_NUM_SCAN_CHANNELS)
  return -EINVAL;

 mutex_lock(&mvm->mutex);

 if (mvm->scan_status == IWL_MVM_SCAN_NONE)
  ret = iwl_mvm_scan_request(mvm, vif, req);
 else
  ret = -EBUSY;

 mutex_unlock(&mvm->mutex);

 return ret;
}
