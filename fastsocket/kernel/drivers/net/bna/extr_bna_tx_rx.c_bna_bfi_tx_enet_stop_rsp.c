
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_tx {int dummy; } ;
struct bfi_msgq_mhdr {int dummy; } ;


 int TX_E_STOPPED ;
 int bfa_fsm_send_event (struct bna_tx*,int ) ;

void
bna_bfi_tx_enet_stop_rsp(struct bna_tx *tx, struct bfi_msgq_mhdr *msghdr)
{
 bfa_fsm_send_event(tx, TX_E_STOPPED);
}
