
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_alive_resp {scalar_t__ is_valid; scalar_t__ ver_subtype; int ver_type; } ;
struct TYPE_2__ {struct il_alive_resp alive_frame; } ;
struct il_rx_pkt {TYPE_1__ u; } ;
struct il_rx_buf {int dummy; } ;
struct delayed_work {int dummy; } ;
struct il_priv {int workqueue; struct delayed_work alive_start; int card_alive; struct delayed_work init_alive_start; int card_alive_init; } ;


 int D_INFO (char*,...) ;
 int IL_WARN (char*) ;
 scalar_t__ INITIALIZE_SUBTYPE ;
 scalar_t__ UCODE_VALID_OK ;
 int il3945_disable_events (struct il_priv*) ;
 int memcpy (int *,struct il_alive_resp*,int) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,struct delayed_work*,int ) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;

__attribute__((used)) static void
il3945_hdl_alive(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);
 struct il_alive_resp *palive;
 struct delayed_work *pwork;

 palive = &pkt->u.alive_frame;

 D_INFO("Alive ucode status 0x%08X revision " "0x%01X 0x%01X\n",
        palive->is_valid, palive->ver_type, palive->ver_subtype);

 if (palive->ver_subtype == INITIALIZE_SUBTYPE) {
  D_INFO("Initialization Alive received.\n");
  memcpy(&il->card_alive_init, &pkt->u.alive_frame,
         sizeof(struct il_alive_resp));
  pwork = &il->init_alive_start;
 } else {
  D_INFO("Runtime Alive received.\n");
  memcpy(&il->card_alive, &pkt->u.alive_frame,
         sizeof(struct il_alive_resp));
  pwork = &il->alive_start;
  il3945_disable_events(il);
 }



 if (palive->is_valid == UCODE_VALID_OK)
  queue_delayed_work(il->workqueue, pwork, msecs_to_jiffies(5));
 else
  IL_WARN("uCode did not respond OK.\n");
}
