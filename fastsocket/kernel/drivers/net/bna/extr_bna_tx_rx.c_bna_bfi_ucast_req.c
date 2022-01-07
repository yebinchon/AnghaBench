
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int num_entries; } ;
struct bfi_enet_ucast_req {TYPE_4__ mh; int mac_addr; } ;
struct TYPE_6__ {struct bfi_enet_ucast_req ucast_req; } ;
struct bna_rxf {int msgq_cmd; TYPE_3__* rx; TYPE_1__ bfi_enet_cmd; } ;
struct bna_mac {int addr; } ;
typedef int mac_t ;
typedef enum bfi_enet_h2i_msgs { ____Placeholder_bfi_enet_h2i_msgs } bfi_enet_h2i_msgs ;
struct TYPE_8__ {TYPE_2__* bna; int rid; } ;
struct TYPE_7__ {int msgq; } ;


 int BFI_MC_ENET ;
 int bfa_msgq_cmd_post (int *,int *) ;
 int bfa_msgq_cmd_set (int *,int *,int *,int,TYPE_4__*) ;
 int bfi_msgq_mhdr_set (TYPE_4__,int ,int,int ,int ) ;
 int bfi_msgq_num_cmd_entries (int) ;
 int htons (int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
bna_bfi_ucast_req(struct bna_rxf *rxf, struct bna_mac *mac,
  enum bfi_enet_h2i_msgs req_type)
{
 struct bfi_enet_ucast_req *req = &rxf->bfi_enet_cmd.ucast_req;

 bfi_msgq_mhdr_set(req->mh, BFI_MC_ENET, req_type, 0, rxf->rx->rid);
 req->mh.num_entries = htons(
 bfi_msgq_num_cmd_entries(sizeof(struct bfi_enet_ucast_req)));
 memcpy(&req->mac_addr, &mac->addr, sizeof(mac_t));
 bfa_msgq_cmd_set(&rxf->msgq_cmd, ((void*)0), ((void*)0),
  sizeof(struct bfi_enet_ucast_req), &req->mh);
 bfa_msgq_cmd_post(&rxf->rx->bna->msgq, &rxf->msgq_cmd);
}
