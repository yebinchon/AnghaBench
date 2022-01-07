
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_sta {size_t sta_id; } ;
struct iwl_mvm {int * pending_frames; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum sta_notify_cmd { ____Placeholder_sta_notify_cmd } sta_notify_cmd ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 size_t IWL_MVM_STATION_COUNT ;


 int WARN_ON (int) ;
 int atomic_read (int *) ;
 int ieee80211_sta_block_awake (struct ieee80211_hw*,struct ieee80211_sta*,int) ;
 int iwl_mvm_sta_modify_ps_wake (struct iwl_mvm*,struct ieee80211_sta*) ;

__attribute__((used)) static void iwl_mvm_mac_sta_notify(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       enum sta_notify_cmd cmd,
       struct ieee80211_sta *sta)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_sta *mvmsta = (void *)sta->drv_priv;

 switch (cmd) {
 case 128:
  if (atomic_read(&mvm->pending_frames[mvmsta->sta_id]) > 0)
   ieee80211_sta_block_awake(hw, sta, 1);





  break;
 case 129:
  if (WARN_ON(mvmsta->sta_id == IWL_MVM_STATION_COUNT))
   break;
  iwl_mvm_sta_modify_ps_wake(mvm, sta);
  break;
 default:
  break;
 }
}
