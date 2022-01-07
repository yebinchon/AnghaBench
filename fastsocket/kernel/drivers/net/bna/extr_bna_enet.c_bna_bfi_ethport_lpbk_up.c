
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int num_entries; } ;
struct bfi_enet_diag_lb_req {TYPE_4__ mh; int enable; int mode; } ;
struct TYPE_6__ {struct bfi_enet_diag_lb_req lpbk_req; } ;
struct bna_ethport {int msgq_cmd; TYPE_3__* bna; TYPE_1__ bfi_enet_cmd; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_8__ {int msgq; TYPE_2__ enet; } ;


 int BFI_ENET_DIAG_LB_OPMODE_CBL ;
 int BFI_ENET_DIAG_LB_OPMODE_EXT ;
 int BFI_ENET_H2I_DIAG_LOOPBACK_REQ ;
 int BFI_MC_ENET ;
 scalar_t__ BNA_ENET_T_LOOPBACK_INTERNAL ;
 int BNA_STATUS_T_ENABLED ;
 int bfa_msgq_cmd_post (int *,int *) ;
 int bfa_msgq_cmd_set (int *,int *,int *,int,TYPE_4__*) ;
 int bfi_msgq_mhdr_set (TYPE_4__,int ,int ,int ,int ) ;
 int bfi_msgq_num_cmd_entries (int) ;
 int htons (int ) ;

__attribute__((used)) static void
bna_bfi_ethport_lpbk_up(struct bna_ethport *ethport)
{
 struct bfi_enet_diag_lb_req *lpbk_up_req =
  &ethport->bfi_enet_cmd.lpbk_req;

 bfi_msgq_mhdr_set(lpbk_up_req->mh, BFI_MC_ENET,
  BFI_ENET_H2I_DIAG_LOOPBACK_REQ, 0, 0);
 lpbk_up_req->mh.num_entries = htons(
  bfi_msgq_num_cmd_entries(sizeof(struct bfi_enet_diag_lb_req)));
 lpbk_up_req->mode = (ethport->bna->enet.type ==
    BNA_ENET_T_LOOPBACK_INTERNAL) ?
    BFI_ENET_DIAG_LB_OPMODE_EXT :
    BFI_ENET_DIAG_LB_OPMODE_CBL;
 lpbk_up_req->enable = BNA_STATUS_T_ENABLED;

 bfa_msgq_cmd_set(&ethport->msgq_cmd, ((void*)0), ((void*)0),
  sizeof(struct bfi_enet_diag_lb_req), &lpbk_up_req->mh);
 bfa_msgq_cmd_post(&ethport->bna->msgq, &ethport->msgq_cmd);
}
