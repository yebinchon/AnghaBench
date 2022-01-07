
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rxon_context {int dummy; } ;
struct iwl_priv {int dummy; } ;


 int iwl_connection_init_rx_config (struct iwl_priv*,struct iwl_rxon_context*) ;
 int iwlagn_commit_rxon (struct iwl_priv*,struct iwl_rxon_context*) ;
 int iwlagn_set_rxon_chain (struct iwl_priv*,struct iwl_rxon_context*) ;

__attribute__((used)) static int iwl_set_mode(struct iwl_priv *priv, struct iwl_rxon_context *ctx)
{
 iwl_connection_init_rx_config(priv, ctx);

 iwlagn_set_rxon_chain(priv, ctx);

 return iwlagn_commit_rxon(priv, ctx);
}
