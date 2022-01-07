
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_ctx_used_data {int used; } ;
struct iwl_mvm_phy_ctxt {int id; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_chanctx_conf {scalar_t__ drv_priv; } ;


 int __set_bit (int ,int ) ;

__attribute__((used)) static void iwl_mvm_phy_ctx_used_iter(struct ieee80211_hw *hw,
          struct ieee80211_chanctx_conf *ctx,
          void *_data)
{
 struct phy_ctx_used_data *data = _data;
 struct iwl_mvm_phy_ctxt *phy_ctxt = (void *)ctx->drv_priv;

 __set_bit(phy_ctxt->id, data->used);
}
