
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {scalar_t__ raw; } ;
struct il_rx_pkt {TYPE_2__ u; } ;
struct il_rx_buf {int dummy; } ;
struct il_priv {int ibss_manager; } ;
struct TYPE_4__ {int status; } ;
struct TYPE_6__ {int failure_frame; TYPE_1__ u; int rate_n_flags; } ;
struct il4965_beacon_notif {int ibss_mgr_status; int low_tsf; int high_tsf; TYPE_3__ beacon_notify_hdr; } ;


 int D_RX (char*,int,int ,int,int,int,int ) ;
 int TX_STATUS_MSK ;
 int il4965_hw_get_rate (int ) ;
 int le32_to_cpu (int ) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;

__attribute__((used)) static void
il4965_hdl_beacon(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);
 struct il4965_beacon_notif *beacon =
     (struct il4965_beacon_notif *)pkt->u.raw;
 il->ibss_manager = le32_to_cpu(beacon->ibss_mgr_status);
}
