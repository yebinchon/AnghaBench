
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum ieee80211_rssi_event { ____Placeholder_ieee80211_rssi_event } ieee80211_rssi_event ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int iwl_mvm_bt_rssi_event (struct iwl_mvm*,struct ieee80211_vif*,int) ;

__attribute__((used)) static void iwl_mvm_mac_rssi_callback(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          enum ieee80211_rssi_event rssi_event)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);

 iwl_mvm_bt_rssi_event(mvm, vif, rssi_event);
}
