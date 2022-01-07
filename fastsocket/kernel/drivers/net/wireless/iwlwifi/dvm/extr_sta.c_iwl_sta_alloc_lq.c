
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_rxon_context {int dummy; } ;
struct iwl_priv {int dummy; } ;
struct iwl_link_quality_cmd {int dummy; } ;


 int GFP_KERNEL ;
 int IWL_ERR (struct iwl_priv*,char*) ;
 int iwl_sta_fill_lq (struct iwl_priv*,struct iwl_rxon_context*,int ,struct iwl_link_quality_cmd*) ;
 struct iwl_link_quality_cmd* kzalloc (int,int ) ;

__attribute__((used)) static struct iwl_link_quality_cmd *
iwl_sta_alloc_lq(struct iwl_priv *priv, struct iwl_rxon_context *ctx,
   u8 sta_id)
{
 struct iwl_link_quality_cmd *link_cmd;

 link_cmd = kzalloc(sizeof(struct iwl_link_quality_cmd), GFP_KERNEL);
 if (!link_cmd) {
  IWL_ERR(priv, "Unable to allocate memory for LQ cmd.\n");
  return ((void*)0);
 }

 iwl_sta_fill_lq(priv, ctx, sta_id, link_cmd);

 return link_cmd;
}
