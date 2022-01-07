
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int raw; } ;
struct TYPE_3__ {int cmd; } ;
struct il_rx_pkt {TYPE_2__ u; TYPE_1__ hdr; int len_n_flags; } ;
struct il_rx_buf {int dummy; } ;
struct il_priv {int dummy; } ;


 int D_RADIO (char*,int,int ) ;
 int IL_DL_RADIO ;
 int IL_RX_FRAME_SIZE_MSK ;
 int il_get_cmd_string (int ) ;
 int il_print_hex_dump (struct il_priv*,int ,int ,int) ;
 int le32_to_cpu (int ) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;

void
il_hdl_pm_debug_stats(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);
 u32 len = le32_to_cpu(pkt->len_n_flags) & IL_RX_FRAME_SIZE_MSK;
 D_RADIO("Dumping %d bytes of unhandled notification for %s:\n", len,
  il_get_cmd_string(pkt->hdr.cmd));
 il_print_hex_dump(il, IL_DL_RADIO, pkt->u.raw, len);
}
