
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {scalar_t__ ucast_active_set; } ;
struct bfi_msgq_mhdr {int dummy; } ;
struct bfi_enet_rsp {scalar_t__ error; } ;


 int RXF_E_FW_RESP ;
 int bfa_fsm_send_event (struct bna_rxf*,int ) ;

void
bna_bfi_rxf_ucast_set_rsp(struct bna_rxf *rxf,
   struct bfi_msgq_mhdr *msghdr)
{
 struct bfi_enet_rsp *rsp =
  (struct bfi_enet_rsp *)msghdr;

 if (rsp->error) {

  rxf->ucast_active_set = 0;
 }

 bfa_fsm_send_event(rxf, RXF_E_FW_RESP);
}
