
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iwl_mvm_vif {int color; int id; } ;
struct iwl_mvm_int_sta {int dummy; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int iwl_mvm_add_int_sta_common (struct iwl_mvm*,struct iwl_mvm_int_sta*,int const*,int ,int ) ;
 int iwl_mvm_allocate_int_sta (struct iwl_mvm*,struct iwl_mvm_int_sta*,int ) ;
 int iwl_mvm_dealloc_int_sta (struct iwl_mvm*,struct iwl_mvm_int_sta*) ;
 int iwl_mvm_mac_get_queues_mask (struct iwl_mvm*,struct ieee80211_vif*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_add_bcast_sta(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
     struct iwl_mvm_int_sta *bsta)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 static const u8 baddr[] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};
 u32 qmask;
 int ret;

 lockdep_assert_held(&mvm->mutex);

 qmask = iwl_mvm_mac_get_queues_mask(mvm, vif);
 ret = iwl_mvm_allocate_int_sta(mvm, bsta, qmask);
 if (ret)
  return ret;

 ret = iwl_mvm_add_int_sta_common(mvm, bsta, baddr,
      mvmvif->id, mvmvif->color);

 if (ret)
  iwl_mvm_dealloc_int_sta(mvm, bsta);
 return ret;
}
