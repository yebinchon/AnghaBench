
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int num_entries; } ;
struct bfi_enet_enable_req {int enable; TYPE_4__ mh; } ;
struct TYPE_8__ {struct bfi_enet_enable_req req; } ;
struct bna_rxf {int msgq_cmd; TYPE_2__* rx; TYPE_3__ bfi_enet_cmd; } ;
typedef enum bna_status { ____Placeholder_bna_status } bna_status ;
struct TYPE_7__ {TYPE_1__* bna; int rid; } ;
struct TYPE_6__ {int msgq; } ;


 int BFI_ENET_H2I_RX_PROMISCUOUS_REQ ;
 int BFI_MC_ENET ;
 int bfa_msgq_cmd_post (int *,int *) ;
 int bfa_msgq_cmd_set (int *,int *,int *,int,TYPE_4__*) ;
 int bfi_msgq_mhdr_set (TYPE_4__,int ,int ,int ,int ) ;
 int bfi_msgq_num_cmd_entries (int) ;
 int htons (int ) ;

__attribute__((used)) static void
bna_bfi_rx_promisc_req(struct bna_rxf *rxf, enum bna_status status)
{
 struct bfi_enet_enable_req *req = &rxf->bfi_enet_cmd.req;

 bfi_msgq_mhdr_set(req->mh, BFI_MC_ENET,
  BFI_ENET_H2I_RX_PROMISCUOUS_REQ, 0, rxf->rx->rid);
 req->mh.num_entries = htons(
  bfi_msgq_num_cmd_entries(sizeof(struct bfi_enet_enable_req)));
 req->enable = status;
 bfa_msgq_cmd_set(&rxf->msgq_cmd, ((void*)0), ((void*)0),
  sizeof(struct bfi_enet_enable_req), &req->mh);
 bfa_msgq_cmd_post(&rxf->rx->bna->msgq, &rxf->msgq_cmd);
}
