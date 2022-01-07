
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int protection; int extension_chan_offset; int enabled; } ;
struct iwl_rxon_cmd {int flags; } ;
struct iwl_rxon_context {TYPE_1__ ht; struct iwl_rxon_cmd staging; } ;
struct iwl_priv {int dummy; } ;
struct iwl_ht_config {int dummy; } ;


 int IEEE80211_HT_OP_MODE_PROTECTION_20MHZ ;



 int IWL_DEBUG_ASSOC (struct iwl_priv*,char*,int ,int,int ) ;
 int IWL_ERR (struct iwl_priv*,char*) ;
 int RXON_FLG_CHANNEL_MODE_LEGACY ;
 int RXON_FLG_CHANNEL_MODE_MIXED ;
 int RXON_FLG_CHANNEL_MODE_MSK ;
 int RXON_FLG_CHANNEL_MODE_PURE_40 ;
 int RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK ;
 int RXON_FLG_HT40_PROT_MSK ;
 int RXON_FLG_HT_OPERATING_MODE_POS ;
 int RXON_FLG_HT_PROT_MSK ;
 int cpu_to_le32 (int) ;
 scalar_t__ iwl_is_ht40_tx_allowed (struct iwl_priv*,struct iwl_rxon_context*,int *) ;
 int iwlagn_set_rxon_chain (struct iwl_priv*,struct iwl_rxon_context*) ;
 int le32_to_cpu (int) ;

__attribute__((used)) static void _iwl_set_rxon_ht(struct iwl_priv *priv,
        struct iwl_ht_config *ht_conf,
        struct iwl_rxon_context *ctx)
{
 struct iwl_rxon_cmd *rxon = &ctx->staging;

 if (!ctx->ht.enabled) {
  rxon->flags &= ~(RXON_FLG_CHANNEL_MODE_MSK |
   RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK |
   RXON_FLG_HT40_PROT_MSK |
   RXON_FLG_HT_PROT_MSK);
  return;
 }




 rxon->flags |= cpu_to_le32(ctx->ht.protection <<
       RXON_FLG_HT_OPERATING_MODE_POS);




 rxon->flags &= ~(RXON_FLG_CHANNEL_MODE_MSK |
    RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK);
 if (iwl_is_ht40_tx_allowed(priv, ctx, ((void*)0))) {

  if (ctx->ht.protection ==
      IEEE80211_HT_OP_MODE_PROTECTION_20MHZ) {
   rxon->flags |= RXON_FLG_CHANNEL_MODE_PURE_40;




   switch (ctx->ht.extension_chan_offset) {
   case 130:
    rxon->flags &=
     ~RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK;
    break;
   case 129:
    rxon->flags |=
     RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK;
    break;
   }
  } else {




   switch (ctx->ht.extension_chan_offset) {
   case 130:
    rxon->flags &=
     ~(RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK);
    rxon->flags |= RXON_FLG_CHANNEL_MODE_MIXED;
    break;
   case 129:
    rxon->flags |= RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK;
    rxon->flags |= RXON_FLG_CHANNEL_MODE_MIXED;
    break;
   case 128:
   default:




    IWL_ERR(priv,
     "invalid extension channel offset\n");
    break;
   }
  }
 } else {
  rxon->flags |= RXON_FLG_CHANNEL_MODE_LEGACY;
 }

 iwlagn_set_rxon_chain(priv, ctx);

 IWL_DEBUG_ASSOC(priv, "rxon flags 0x%X operation mode :0x%X "
   "extension channel offset 0x%x\n",
   le32_to_cpu(rxon->flags), ctx->ht.protection,
   ctx->ht.extension_chan_offset);
}
