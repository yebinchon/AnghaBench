
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int num_entries; } ;
struct bfi_enet_enable_req {TYPE_3__ mh; int enable; } ;
struct TYPE_6__ {struct bfi_enet_enable_req admin_req; } ;
struct bna_ethport {int msgq_cmd; TYPE_1__* bna; TYPE_2__ bfi_enet_cmd; } ;
struct TYPE_5__ {int msgq; } ;


 int BFI_ENET_H2I_PORT_ADMIN_UP_REQ ;
 int BFI_MC_ENET ;
 int BNA_STATUS_T_DISABLED ;
 int bfa_msgq_cmd_post (int *,int *) ;
 int bfa_msgq_cmd_set (int *,int *,int *,int,TYPE_3__*) ;
 int bfi_msgq_mhdr_set (TYPE_3__,int ,int ,int ,int ) ;
 int bfi_msgq_num_cmd_entries (int) ;
 int htons (int ) ;

__attribute__((used)) static void
bna_bfi_ethport_admin_down(struct bna_ethport *ethport)
{
 struct bfi_enet_enable_req *admin_down_req =
  &ethport->bfi_enet_cmd.admin_req;

 bfi_msgq_mhdr_set(admin_down_req->mh, BFI_MC_ENET,
  BFI_ENET_H2I_PORT_ADMIN_UP_REQ, 0, 0);
 admin_down_req->mh.num_entries = htons(
  bfi_msgq_num_cmd_entries(sizeof(struct bfi_enet_enable_req)));
 admin_down_req->enable = BNA_STATUS_T_DISABLED;

 bfa_msgq_cmd_set(&ethport->msgq_cmd, ((void*)0), ((void*)0),
  sizeof(struct bfi_enet_enable_req), &admin_down_req->mh);
 bfa_msgq_cmd_post(&ethport->bna->msgq, &ethport->msgq_cmd);
}
