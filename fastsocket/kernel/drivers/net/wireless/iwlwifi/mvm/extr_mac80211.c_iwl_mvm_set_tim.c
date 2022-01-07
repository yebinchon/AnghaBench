
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_sta {int vif; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;


 int EINVAL ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int iwl_mvm_mac_ctxt_beacon_changed (struct iwl_mvm*,int ) ;

__attribute__((used)) static int iwl_mvm_set_tim(struct ieee80211_hw *hw,
      struct ieee80211_sta *sta,
      bool set)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_sta *mvm_sta = (void *)sta->drv_priv;

 if (!mvm_sta || !mvm_sta->vif) {
  IWL_ERR(mvm, "Station is not associated to a vif\n");
  return -EINVAL;
 }

 return iwl_mvm_mac_ctxt_beacon_changed(mvm, mvm_sta->vif);
}
