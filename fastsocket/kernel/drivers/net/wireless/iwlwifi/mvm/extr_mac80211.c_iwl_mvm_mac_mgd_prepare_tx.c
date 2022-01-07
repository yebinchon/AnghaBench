
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_mvm {int mutex; } ;
struct TYPE_2__ {int assoc; scalar_t__ beacon_int; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ieee80211_hw {int dummy; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_MVM_TE_SESSION_PROTECTION_MAX_TIME_MS ;
 int IWL_MVM_TE_SESSION_PROTECTION_MIN_TIME_MS ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int iwl_mvm_protect_session (struct iwl_mvm*,struct ieee80211_vif*,int ,int ) ;
 int min (int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_mac_mgd_prepare_tx(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 u32 duration = min(IWL_MVM_TE_SESSION_PROTECTION_MAX_TIME_MS,
      200 + vif->bss_conf.beacon_int);
 u32 min_duration = min(IWL_MVM_TE_SESSION_PROTECTION_MIN_TIME_MS,
          100 + vif->bss_conf.beacon_int);

 if (WARN_ON_ONCE(vif->bss_conf.assoc))
  return;

 mutex_lock(&mvm->mutex);

 iwl_mvm_protect_session(mvm, vif, duration, min_duration);
 mutex_unlock(&mvm->mutex);
}
