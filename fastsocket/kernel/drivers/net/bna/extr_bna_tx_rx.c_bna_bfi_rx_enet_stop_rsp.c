
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rx {int dummy; } ;
struct bfi_msgq_mhdr {int dummy; } ;


 int RX_E_STOPPED ;
 int bfa_fsm_send_event (struct bna_rx*,int ) ;

void
bna_bfi_rx_enet_stop_rsp(struct bna_rx *rx, struct bfi_msgq_mhdr *msghdr)
{
 bfa_fsm_send_event(rx, RX_E_STOPPED);
}
