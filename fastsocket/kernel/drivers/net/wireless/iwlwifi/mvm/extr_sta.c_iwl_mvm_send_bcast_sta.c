
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm_vif {int color; int id; } ;
struct iwl_mvm_int_sta {scalar_t__ sta_id; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int ENOSPC ;
 scalar_t__ IWL_MVM_STATION_COUNT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int iwl_mvm_add_int_sta_common (struct iwl_mvm*,struct iwl_mvm_int_sta*,int const*,int ,int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_send_bcast_sta(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
      struct iwl_mvm_int_sta *bsta)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 static const u8 baddr[] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};

 lockdep_assert_held(&mvm->mutex);

 if (WARN_ON_ONCE(bsta->sta_id == IWL_MVM_STATION_COUNT))
  return -ENOSPC;

 return iwl_mvm_add_int_sta_common(mvm, bsta, baddr,
       mvmvif->id, mvmvif->color);
}
