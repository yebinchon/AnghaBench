
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct il_rxon_cmd {scalar_t__ channel; } ;
struct il_csa_notification {scalar_t__ channel; int status; } ;
struct TYPE_3__ {struct il_csa_notification csa_notif; } ;
struct il_rx_pkt {TYPE_1__ u; } ;
struct il_rx_buf {int dummy; } ;
struct TYPE_4__ {scalar_t__ channel; } ;
struct il_priv {scalar_t__ switch_channel; TYPE_2__ staging; int status; int active; } ;


 int D_11H (char*,int ) ;
 int IL_ERR (char*,int ) ;
 int S_CHANNEL_SWITCH_PENDING ;
 int il_chswitch_done (struct il_priv*,int) ;
 int le16_to_cpu (scalar_t__) ;
 int le32_to_cpu (int ) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;
 int test_bit (int ,int *) ;

void
il_hdl_csa(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);
 struct il_csa_notification *csa = &(pkt->u.csa_notif);
 struct il_rxon_cmd *rxon = (void *)&il->active;

 if (!test_bit(S_CHANNEL_SWITCH_PENDING, &il->status))
  return;

 if (!le32_to_cpu(csa->status) && csa->channel == il->switch_channel) {
  rxon->channel = csa->channel;
  il->staging.channel = csa->channel;
  D_11H("CSA notif: channel %d\n", le16_to_cpu(csa->channel));
  il_chswitch_done(il, 1);
 } else {
  IL_ERR("CSA notif (fail) : channel %d\n",
         le16_to_cpu(csa->channel));
  il_chswitch_done(il, 0);
 }
}
