
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {int num_entries; } ;
struct bfi_enet_rx_vlan_req {int block_idx; int* bit_mask; TYPE_4__ mh; } ;
struct TYPE_6__ {struct bfi_enet_rx_vlan_req vlan_req; } ;
struct bna_rxf {scalar_t__ vlan_filter_status; int msgq_cmd; TYPE_3__* rx; int * vlan_filter_table; TYPE_1__ bfi_enet_cmd; } ;
struct TYPE_8__ {TYPE_2__* bna; int rid; } ;
struct TYPE_7__ {int msgq; } ;


 int BFI_ENET_H2I_RX_VLAN_SET_REQ ;
 int BFI_ENET_VLAN_BLOCK_SIZE ;
 int BFI_MC_ENET ;
 scalar_t__ BNA_STATUS_T_ENABLED ;
 int bfa_msgq_cmd_post (int *,int *) ;
 int bfa_msgq_cmd_set (int *,int *,int *,int,TYPE_4__*) ;
 int bfi_msgq_mhdr_set (TYPE_4__,int ,int ,int ,int ) ;
 int bfi_msgq_num_cmd_entries (int) ;
 int htonl (int ) ;
 int htons (int ) ;

__attribute__((used)) static void
bna_bfi_rx_vlan_filter_set(struct bna_rxf *rxf, u8 block_idx)
{
 struct bfi_enet_rx_vlan_req *req = &rxf->bfi_enet_cmd.vlan_req;
 int i;
 int j;

 bfi_msgq_mhdr_set(req->mh, BFI_MC_ENET,
  BFI_ENET_H2I_RX_VLAN_SET_REQ, 0, rxf->rx->rid);
 req->mh.num_entries = htons(
  bfi_msgq_num_cmd_entries(sizeof(struct bfi_enet_rx_vlan_req)));
 req->block_idx = block_idx;
 for (i = 0; i < (BFI_ENET_VLAN_BLOCK_SIZE / 32); i++) {
  j = (block_idx * (BFI_ENET_VLAN_BLOCK_SIZE / 32)) + i;
  if (rxf->vlan_filter_status == BNA_STATUS_T_ENABLED)
   req->bit_mask[i] =
    htonl(rxf->vlan_filter_table[j]);
  else
   req->bit_mask[i] = 0xFFFFFFFF;
 }
 bfa_msgq_cmd_set(&rxf->msgq_cmd, ((void*)0), ((void*)0),
  sizeof(struct bfi_enet_rx_vlan_req), &req->mh);
 bfa_msgq_cmd_post(&rxf->rx->bna->msgq, &rxf->msgq_cmd);
}
