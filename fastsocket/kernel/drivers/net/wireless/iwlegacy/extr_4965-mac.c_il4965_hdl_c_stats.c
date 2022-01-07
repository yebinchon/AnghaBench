
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flag; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;
struct il_rx_pkt {TYPE_2__ u; } ;
struct il_rx_buf {int dummy; } ;
struct TYPE_6__ {int max_delta; int delta_stats; int accum_stats; } ;
struct il_priv {TYPE_3__ _4965; } ;
struct il_notif_stats {int dummy; } ;


 int D_RX (char*) ;
 int UCODE_STATS_CLEAR_MSK ;
 int il4965_hdl_stats (struct il_priv*,struct il_rx_buf*) ;
 int le32_to_cpu (int ) ;
 int memset (int *,int ,int) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;

__attribute__((used)) static void
il4965_hdl_c_stats(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);

 if (le32_to_cpu(pkt->u.stats.flag) & UCODE_STATS_CLEAR_MSK) {







  D_RX("Statistics have been cleared\n");
 }
 il4965_hdl_stats(il, rxb);
}
