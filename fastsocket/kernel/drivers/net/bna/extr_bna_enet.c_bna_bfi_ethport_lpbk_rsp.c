
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfi_enet_diag_lb_req {int enable; } ;
struct TYPE_2__ {struct bfi_enet_diag_lb_req lpbk_req; } ;
struct bna_ethport {int flags; TYPE_1__ bfi_enet_cmd; } ;
struct bfi_msgq_mhdr {int dummy; } ;
struct bfi_enet_rsp {int error; } ;


 int BFI_ENET_CMD_OK ;
 int BNA_ETHPORT_F_ADMIN_UP ;


 int ETHPORT_E_FWRESP_DOWN ;
 int ETHPORT_E_FWRESP_UP_FAIL ;
 int ETHPORT_E_FWRESP_UP_OK ;
 int bfa_fsm_send_event (struct bna_ethport*,int ) ;

__attribute__((used)) static void
bna_bfi_ethport_lpbk_rsp(struct bna_ethport *ethport,
    struct bfi_msgq_mhdr *msghdr)
{
 struct bfi_enet_diag_lb_req *diag_lb_req =
  &ethport->bfi_enet_cmd.lpbk_req;
 struct bfi_enet_rsp *rsp = (struct bfi_enet_rsp *)msghdr;

 switch (diag_lb_req->enable) {
 case 128:
  if (rsp->error == BFI_ENET_CMD_OK)
   bfa_fsm_send_event(ethport, ETHPORT_E_FWRESP_UP_OK);
  else {
   ethport->flags &= ~BNA_ETHPORT_F_ADMIN_UP;
   bfa_fsm_send_event(ethport, ETHPORT_E_FWRESP_UP_FAIL);
  }
  break;

 case 129:
  bfa_fsm_send_event(ethport, ETHPORT_E_FWRESP_DOWN);
  break;
 }
}
