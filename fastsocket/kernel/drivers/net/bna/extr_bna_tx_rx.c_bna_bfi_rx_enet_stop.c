
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int num_entries; } ;
struct bfi_enet_req {TYPE_3__ mh; } ;
struct TYPE_6__ {struct bfi_enet_req req; } ;
struct bna_rx {int msgq_cmd; TYPE_1__* bna; int rid; TYPE_2__ bfi_enet_cmd; } ;
struct TYPE_5__ {int msgq; } ;


 int BFI_ENET_H2I_RX_CFG_CLR_REQ ;
 int BFI_MC_ENET ;
 int bfa_msgq_cmd_post (int *,int *) ;
 int bfa_msgq_cmd_set (int *,int *,int *,int,TYPE_3__*) ;
 int bfi_msgq_mhdr_set (TYPE_3__,int ,int ,int ,int ) ;
 int bfi_msgq_num_cmd_entries (int) ;
 int htons (int ) ;

__attribute__((used)) static void
bna_bfi_rx_enet_stop(struct bna_rx *rx)
{
 struct bfi_enet_req *req = &rx->bfi_enet_cmd.req;

 bfi_msgq_mhdr_set(req->mh, BFI_MC_ENET,
  BFI_ENET_H2I_RX_CFG_CLR_REQ, 0, rx->rid);
 req->mh.num_entries = htons(
  bfi_msgq_num_cmd_entries(sizeof(struct bfi_enet_req)));
 bfa_msgq_cmd_set(&rx->msgq_cmd, ((void*)0), ((void*)0), sizeof(struct bfi_enet_req),
  &req->mh);
 bfa_msgq_cmd_post(&rx->bna->msgq, &rx->msgq_cmd);
}
