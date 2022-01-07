
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_vif_priv {struct iwl_rxon_context* ctx; } ;
struct iwl_rxon_context {int dummy; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;



__attribute__((used)) static inline struct iwl_rxon_context *
iwl_rxon_ctx_from_vif(struct ieee80211_vif *vif)
{
 struct iwl_vif_priv *vif_priv = (void *)vif->drv_priv;

 return vif_priv->ctx;
}
