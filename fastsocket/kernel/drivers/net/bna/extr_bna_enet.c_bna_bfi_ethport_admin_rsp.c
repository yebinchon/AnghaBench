
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfi_enet_enable_req {int enable; } ;
struct TYPE_4__ {struct bfi_enet_enable_req admin_req; } ;
struct bna_ethport {TYPE_1__* bna; int (* link_cbfn ) (int ,int ) ;int link_status; int flags; TYPE_2__ bfi_enet_cmd; } ;
struct bfi_msgq_mhdr {int dummy; } ;
struct bfi_enet_rsp {int error; } ;
struct TYPE_3__ {int bnad; } ;


 int BFI_ENET_CMD_OK ;
 int BNA_ETHPORT_F_PORT_ENABLED ;
 int BNA_LINK_DOWN ;


 int ETHPORT_E_FWRESP_DOWN ;
 int ETHPORT_E_FWRESP_UP_FAIL ;
 int ETHPORT_E_FWRESP_UP_OK ;
 int bfa_fsm_send_event (struct bna_ethport*,int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
bna_bfi_ethport_admin_rsp(struct bna_ethport *ethport,
    struct bfi_msgq_mhdr *msghdr)
{
 struct bfi_enet_enable_req *admin_req =
  &ethport->bfi_enet_cmd.admin_req;
 struct bfi_enet_rsp *rsp = (struct bfi_enet_rsp *)msghdr;

 switch (admin_req->enable) {
 case 128:
  if (rsp->error == BFI_ENET_CMD_OK)
   bfa_fsm_send_event(ethport, ETHPORT_E_FWRESP_UP_OK);
  else {
   ethport->flags &= ~BNA_ETHPORT_F_PORT_ENABLED;
   bfa_fsm_send_event(ethport, ETHPORT_E_FWRESP_UP_FAIL);
  }
  break;

 case 129:
  bfa_fsm_send_event(ethport, ETHPORT_E_FWRESP_DOWN);
  ethport->link_status = BNA_LINK_DOWN;
  ethport->link_cbfn(ethport->bna->bnad, BNA_LINK_DOWN);
  break;
 }
}
