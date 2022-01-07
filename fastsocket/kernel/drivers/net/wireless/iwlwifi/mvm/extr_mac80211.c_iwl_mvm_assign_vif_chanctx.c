
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_vif {int monitor_active; struct iwl_mvm_phy_ctxt* phy_ctxt; } ;
struct iwl_mvm_phy_ctxt {int dummy; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_chanctx_conf {scalar_t__ drv_priv; } ;


 int EINVAL ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;




 int iwl_mvm_binding_add_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_binding_remove_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_update_quotas (struct iwl_mvm*,struct ieee80211_vif*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_mvm_assign_vif_chanctx(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          struct ieee80211_chanctx_conf *ctx)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_phy_ctxt *phyctx = (void *)ctx->drv_priv;
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret;

 mutex_lock(&mvm->mutex);

 mvmvif->phy_ctxt = phyctx;

 switch (vif->type) {
 case 130:




  ret = 0;
  goto out_unlock;
 case 128:
 case 131:
 case 129:
  break;
 default:
  ret = -EINVAL;
  goto out_unlock;
 }

 ret = iwl_mvm_binding_add_vif(mvm, vif);
 if (ret)
  goto out_unlock;






 if (vif->type == 129) {
  mvmvif->monitor_active = 1;
  ret = iwl_mvm_update_quotas(mvm, vif);
  if (ret)
   goto out_remove_binding;
 }

 goto out_unlock;

 out_remove_binding:
 iwl_mvm_binding_remove_vif(mvm, vif);
 out_unlock:
 mutex_unlock(&mvm->mutex);
 if (ret)
  mvmvif->phy_ctxt = ((void*)0);
 return ret;
}
