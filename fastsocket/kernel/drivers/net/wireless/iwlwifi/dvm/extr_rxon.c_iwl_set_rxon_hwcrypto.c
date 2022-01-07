
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rxon_cmd {int filter_flags; } ;
struct iwl_rxon_context {struct iwl_rxon_cmd staging; } ;
struct iwl_priv {int dummy; } ;


 int RXON_FILTER_DIS_DECRYPT_MSK ;

__attribute__((used)) static void iwl_set_rxon_hwcrypto(struct iwl_priv *priv,
      struct iwl_rxon_context *ctx, int hw_decrypt)
{
 struct iwl_rxon_cmd *rxon = &ctx->staging;

 if (hw_decrypt)
  rxon->filter_flags &= ~RXON_FILTER_DIS_DECRYPT_MSK;
 else
  rxon->filter_flags |= RXON_FILTER_DIS_DECRYPT_MSK;

}
