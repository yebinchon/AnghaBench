
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;


 int iwl_mvm_sta_send_to_fw (struct iwl_mvm*,struct ieee80211_sta*,int) ;

int iwl_mvm_update_sta(struct iwl_mvm *mvm,
         struct ieee80211_vif *vif,
         struct ieee80211_sta *sta)
{
 return iwl_mvm_sta_send_to_fw(mvm, sta, 1);
}
