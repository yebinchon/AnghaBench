
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int raw; } ;
struct il_rx_pkt {TYPE_2__ u; } ;
struct il_rx_phy_res {int dummy; } ;
struct il_rx_buf {int dummy; } ;
struct TYPE_3__ {int last_phy_res_valid; int last_phy_res; int ampdu_ref; } ;
struct il_priv {TYPE_1__ _4965; } ;


 int memcpy (int *,int ,int) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;

__attribute__((used)) static void
il4965_hdl_rx_phy(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);
 il->_4965.last_phy_res_valid = 1;
 il->_4965.ampdu_ref++;
 memcpy(&il->_4965.last_phy_res, pkt->u.raw,
        sizeof(struct il_rx_phy_res));
}
