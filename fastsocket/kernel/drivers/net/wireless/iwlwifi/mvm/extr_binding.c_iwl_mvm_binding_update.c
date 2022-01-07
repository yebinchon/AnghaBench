
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm_vif {int color; int id; } ;
struct iwl_mvm_phy_ctxt {int dummy; } ;
struct iwl_mvm_iface_iterator_data {size_t idx; int * colors; int * ids; struct iwl_mvm_phy_ctxt* phyctxt; struct ieee80211_vif* ignore_vif; } ;
struct iwl_mvm {int hw; int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int EINVAL ;
 int FW_CTXT_ACTION_ADD ;
 int FW_CTXT_ACTION_MODIFY ;
 int FW_CTXT_ACTION_REMOVE ;
 int IEEE80211_IFACE_ITER_NORMAL ;
 size_t MAX_MACS_IN_BINDING ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct iwl_mvm_iface_iterator_data*) ;
 int iwl_mvm_binding_cmd (struct iwl_mvm*,int ,struct iwl_mvm_iface_iterator_data*) ;
 int iwl_mvm_iface_iterator ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int iwl_mvm_binding_update(struct iwl_mvm *mvm,
      struct ieee80211_vif *vif,
      struct iwl_mvm_phy_ctxt *phyctxt,
      bool add)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_iface_iterator_data data = {
  .ignore_vif = vif,
  .phyctxt = phyctxt,
 };
 u32 action = FW_CTXT_ACTION_MODIFY;

 lockdep_assert_held(&mvm->mutex);

 ieee80211_iterate_active_interfaces_atomic(mvm->hw,
         IEEE80211_IFACE_ITER_NORMAL,
         iwl_mvm_iface_iterator,
         &data);





 if (data.idx == 0) {
  if (add)
   action = FW_CTXT_ACTION_ADD;
  else
   action = FW_CTXT_ACTION_REMOVE;
 }

 if (add) {
  if (WARN_ON_ONCE(data.idx >= MAX_MACS_IN_BINDING))
   return -EINVAL;

  data.ids[data.idx] = mvmvif->id;
  data.colors[data.idx] = mvmvif->color;
  data.idx++;
 }

 return iwl_mvm_binding_cmd(mvm, action, &data);
}
