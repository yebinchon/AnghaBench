
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm_phy_ctxt {int dummy; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_chanctx_conf {int rx_chains_dynamic; int rx_chains_static; int def; scalar_t__ drv_priv; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int iwl_mvm_phy_ctxt_changed (struct iwl_mvm*,struct iwl_mvm_phy_ctxt*,int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_change_chanctx(struct ieee80211_hw *hw,
       struct ieee80211_chanctx_conf *ctx,
       u32 changed)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_phy_ctxt *phy_ctxt = (void *)ctx->drv_priv;

 mutex_lock(&mvm->mutex);
 iwl_mvm_phy_ctxt_changed(mvm, phy_ctxt, &ctx->def,
     ctx->rx_chains_static,
     ctx->rx_chains_dynamic);
 mutex_unlock(&mvm->mutex);
}
