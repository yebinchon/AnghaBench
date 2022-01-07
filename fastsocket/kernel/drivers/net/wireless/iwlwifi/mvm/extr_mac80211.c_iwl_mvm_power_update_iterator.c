
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;


 int iwl_mvm_power_update_mode (struct iwl_mvm*,struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_mvm_power_update_iterator(void *data, u8 *mac,
       struct ieee80211_vif *vif)
{
 struct iwl_mvm *mvm = data;

 iwl_mvm_power_update_mode(mvm, vif);
}
