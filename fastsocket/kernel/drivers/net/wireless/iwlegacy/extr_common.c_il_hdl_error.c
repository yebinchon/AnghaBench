
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int error_info; int bad_cmd_seq_num; int cmd_id; int error_type; } ;
struct TYPE_3__ {TYPE_2__ err_resp; } ;
struct il_rx_pkt {TYPE_1__ u; } ;
struct il_rx_buf {int dummy; } ;
struct il_priv {int dummy; } ;


 int IL_ERR (char*,int ,int ,int ,int ,int ) ;
 int il_get_cmd_string (int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;

void
il_hdl_error(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);

 IL_ERR("Error Reply type 0x%08X cmd %s (0x%02X) "
        "seq 0x%04X ser 0x%08X\n",
        le32_to_cpu(pkt->u.err_resp.error_type),
        il_get_cmd_string(pkt->u.err_resp.cmd_id),
        pkt->u.err_resp.cmd_id,
        le16_to_cpu(pkt->u.err_resp.bad_cmd_seq_num),
        le32_to_cpu(pkt->u.err_resp.error_info));
}
