
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node_addr; int filter_flags; int dev_type; } ;
struct iwl_rxon_context {int is_active; TYPE_1__ staging; } ;
struct iwl_priv {int hw_roc_setup; int * hw_roc_channel; int mutex; struct iwl_rxon_context* contexts; } ;


 int ETH_ALEN ;
 size_t IWL_RXON_CTX_PAN ;
 int RXON_DEV_TYPE_P2P ;
 int RXON_FILTER_ASSOC_MSK ;
 int iwlagn_commit_rxon (struct iwl_priv*,struct iwl_rxon_context*) ;
 int lockdep_assert_held (int *) ;
 int memset (int ,int ,int ) ;

void iwlagn_disable_roc(struct iwl_priv *priv)
{
 struct iwl_rxon_context *ctx = &priv->contexts[IWL_RXON_CTX_PAN];

 lockdep_assert_held(&priv->mutex);

 if (!priv->hw_roc_setup)
  return;

 ctx->staging.dev_type = RXON_DEV_TYPE_P2P;
 ctx->staging.filter_flags &= ~RXON_FILTER_ASSOC_MSK;

 priv->hw_roc_channel = ((void*)0);

 memset(ctx->staging.node_addr, 0, ETH_ALEN);

 iwlagn_commit_rxon(priv, ctx);

 ctx->is_active = 0;
 priv->hw_roc_setup = 0;
}
