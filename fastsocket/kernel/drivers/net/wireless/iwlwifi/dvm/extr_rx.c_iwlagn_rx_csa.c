
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ channel; } ;
struct iwl_rxon_context {TYPE_1__ staging; int active; } ;
struct iwl_rxon_cmd {scalar_t__ channel; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {scalar_t__ switch_channel; int status; struct iwl_rxon_context* contexts; } ;
struct iwl_device_cmd {int dummy; } ;
struct iwl_csa_notification {scalar_t__ channel; int status; } ;


 int IWL_DEBUG_11H (struct iwl_priv*,char*,int ) ;
 int IWL_ERR (struct iwl_priv*,char*,int ) ;
 size_t IWL_RXON_CTX_BSS ;
 int STATUS_CHANNEL_SWITCH_PENDING ;
 int iwl_chswitch_done (struct iwl_priv*,int) ;
 int le16_to_cpu (scalar_t__) ;
 int le32_to_cpu (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int iwlagn_rx_csa(struct iwl_priv *priv, struct iwl_rx_cmd_buffer *rxb,
          struct iwl_device_cmd *cmd)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_csa_notification *csa = (void *)pkt->data;




 struct iwl_rxon_context *ctx = &priv->contexts[IWL_RXON_CTX_BSS];
 struct iwl_rxon_cmd *rxon = (void *)&ctx->active;

 if (!test_bit(STATUS_CHANNEL_SWITCH_PENDING, &priv->status))
  return 0;

 if (!le32_to_cpu(csa->status) && csa->channel == priv->switch_channel) {
  rxon->channel = csa->channel;
  ctx->staging.channel = csa->channel;
  IWL_DEBUG_11H(priv, "CSA notif: channel %d\n",
         le16_to_cpu(csa->channel));
  iwl_chswitch_done(priv, 1);
 } else {
  IWL_ERR(priv, "CSA notif (fail) : channel %d\n",
   le16_to_cpu(csa->channel));
  iwl_chswitch_done(priv, 0);
 }
 return 0;
}
