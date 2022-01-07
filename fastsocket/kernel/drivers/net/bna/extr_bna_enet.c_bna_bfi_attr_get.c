
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_entries; } ;
struct bfi_enet_attr_req {TYPE_2__ mh; } ;
struct bna_ioceth {int msgq_cmd; TYPE_1__* bna; struct bfi_enet_attr_req attr_req; } ;
struct TYPE_4__ {int msgq; } ;


 int BFI_ENET_H2I_GET_ATTR_REQ ;
 int BFI_MC_ENET ;
 int bfa_msgq_cmd_post (int *,int *) ;
 int bfa_msgq_cmd_set (int *,int *,int *,int,TYPE_2__*) ;
 int bfi_msgq_mhdr_set (TYPE_2__,int ,int ,int ,int ) ;
 int bfi_msgq_num_cmd_entries (int) ;
 int htons (int ) ;

__attribute__((used)) static void
bna_bfi_attr_get(struct bna_ioceth *ioceth)
{
 struct bfi_enet_attr_req *attr_req = &ioceth->attr_req;

 bfi_msgq_mhdr_set(attr_req->mh, BFI_MC_ENET,
  BFI_ENET_H2I_GET_ATTR_REQ, 0, 0);
 attr_req->mh.num_entries = htons(
 bfi_msgq_num_cmd_entries(sizeof(struct bfi_enet_attr_req)));
 bfa_msgq_cmd_set(&ioceth->msgq_cmd, ((void*)0), ((void*)0),
  sizeof(struct bfi_enet_attr_req), &attr_req->mh);
 bfa_msgq_cmd_post(&ioceth->bna->msgq, &ioceth->msgq_cmd);
}
