
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rx {int rx_flags; } ;


 int BNA_RX_F_ENET_STARTED ;
 int RX_E_FAIL ;
 int bfa_fsm_send_event (struct bna_rx*,int ) ;

__attribute__((used)) static void
bna_rx_fail(struct bna_rx *rx)
{

 rx->rx_flags &= ~BNA_RX_F_ENET_STARTED;
 bfa_fsm_send_event(rx, RX_E_FAIL);
}
