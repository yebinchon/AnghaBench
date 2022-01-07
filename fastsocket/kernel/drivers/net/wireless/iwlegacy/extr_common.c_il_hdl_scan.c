
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_scanreq_notification {int status; } ;
struct TYPE_2__ {scalar_t__ raw; } ;
struct il_rx_pkt {TYPE_1__ u; } ;
struct il_rx_buf {int dummy; } ;
struct il_priv {int dummy; } ;


 int D_SCAN (char*,int ) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;

__attribute__((used)) static void
il_hdl_scan(struct il_priv *il, struct il_rx_buf *rxb)
{







}
