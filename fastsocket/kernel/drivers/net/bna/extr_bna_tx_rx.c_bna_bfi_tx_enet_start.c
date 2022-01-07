
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct list_head {int dummy; } ;
struct TYPE_23__ {int msb; int lsb; } ;
struct TYPE_15__ {scalar_t__ intr_type; scalar_t__ interpkt_count; scalar_t__ interpkt_timeo; scalar_t__ coalescing_timeo; scalar_t__ intr_vector; TYPE_5__ ib_seg_host_addr; } ;
struct bna_txq {TYPE_10__ ib; int priority; int qpt; } ;
struct TYPE_18__ {void* num_entries; } ;
struct TYPE_16__ {void* apply_vlan_filter; void* admit_tagged_frame; void* vlan_id; int vlan_mode; } ;
struct TYPE_27__ {scalar_t__ inter_pkt_count; void* inter_pkt_timeout; void* coalescing_timeout; void* msix; void* continuous_coalescing; void* int_pkt_enabled; void* int_enabled; void* int_pkt_dma; } ;
struct bfi_enet_tx_cfg_req {int num_queues; TYPE_13__ mh; TYPE_11__ tx_cfg; TYPE_9__ ib_cfg; TYPE_8__* q_cfg; } ;
struct TYPE_19__ {struct bfi_enet_tx_cfg_req cfg_req; } ;
struct bna_tx {int num_txq; int msgq_cmd; TYPE_12__* bna; scalar_t__ txf_vlan_id; int txq_q; int rid; TYPE_1__ bfi_enet_cmd; } ;
struct TYPE_24__ {void* msix_index; } ;
struct TYPE_21__ {int addr_hi; int addr_lo; } ;
struct TYPE_22__ {TYPE_3__ a32; } ;
struct TYPE_25__ {TYPE_6__ intr; TYPE_4__ index_addr; } ;
struct TYPE_20__ {int priority; int q; } ;
struct TYPE_26__ {TYPE_7__ ib; TYPE_2__ q; } ;
struct TYPE_17__ {int msgq; } ;


 int BFI_ENET_H2I_TX_CFG_SET_REQ ;
 int BFI_ENET_TX_VLAN_WI ;
 int BFI_MC_ENET ;
 scalar_t__ BNA_INTR_T_MSIX ;
 void* BNA_STATUS_T_DISABLED ;
 void* BNA_STATUS_T_ENABLED ;
 int bfa_msgq_cmd_post (int *,int *) ;
 int bfa_msgq_cmd_set (int *,int *,int *,int,TYPE_13__*) ;
 struct list_head* bfa_q_first (int *) ;
 struct list_head* bfa_q_next (struct list_head*) ;
 int bfi_enet_datapath_q_init (int *,int *) ;
 int bfi_msgq_mhdr_set (TYPE_13__,int ,int ,int ,int ) ;
 int bfi_msgq_num_cmd_entries (int) ;
 void* htonl (int ) ;
 void* htons (int ) ;

__attribute__((used)) static void
bna_bfi_tx_enet_start(struct bna_tx *tx)
{
 struct bfi_enet_tx_cfg_req *cfg_req = &tx->bfi_enet_cmd.cfg_req;
 struct bna_txq *txq = ((void*)0);
 struct list_head *qe;
 int i;

 bfi_msgq_mhdr_set(cfg_req->mh, BFI_MC_ENET,
  BFI_ENET_H2I_TX_CFG_SET_REQ, 0, tx->rid);
 cfg_req->mh.num_entries = htons(
  bfi_msgq_num_cmd_entries(sizeof(struct bfi_enet_tx_cfg_req)));

 cfg_req->num_queues = tx->num_txq;
 for (i = 0, qe = bfa_q_first(&tx->txq_q);
  i < tx->num_txq;
  i++, qe = bfa_q_next(qe)) {
  txq = (struct bna_txq *)qe;

  bfi_enet_datapath_q_init(&cfg_req->q_cfg[i].q.q, &txq->qpt);
  cfg_req->q_cfg[i].q.priority = txq->priority;

  cfg_req->q_cfg[i].ib.index_addr.a32.addr_lo =
   txq->ib.ib_seg_host_addr.lsb;
  cfg_req->q_cfg[i].ib.index_addr.a32.addr_hi =
   txq->ib.ib_seg_host_addr.msb;
  cfg_req->q_cfg[i].ib.intr.msix_index =
   htons((u16)txq->ib.intr_vector);
 }

 cfg_req->ib_cfg.int_pkt_dma = BNA_STATUS_T_ENABLED;
 cfg_req->ib_cfg.int_enabled = BNA_STATUS_T_ENABLED;
 cfg_req->ib_cfg.int_pkt_enabled = BNA_STATUS_T_DISABLED;
 cfg_req->ib_cfg.continuous_coalescing = BNA_STATUS_T_ENABLED;
 cfg_req->ib_cfg.msix = (txq->ib.intr_type == BNA_INTR_T_MSIX)
    ? BNA_STATUS_T_ENABLED : BNA_STATUS_T_DISABLED;
 cfg_req->ib_cfg.coalescing_timeout =
   htonl((u32)txq->ib.coalescing_timeo);
 cfg_req->ib_cfg.inter_pkt_timeout =
   htonl((u32)txq->ib.interpkt_timeo);
 cfg_req->ib_cfg.inter_pkt_count = (u8)txq->ib.interpkt_count;

 cfg_req->tx_cfg.vlan_mode = BFI_ENET_TX_VLAN_WI;
 cfg_req->tx_cfg.vlan_id = htons((u16)tx->txf_vlan_id);
 cfg_req->tx_cfg.admit_tagged_frame = BNA_STATUS_T_DISABLED;
 cfg_req->tx_cfg.apply_vlan_filter = BNA_STATUS_T_DISABLED;

 bfa_msgq_cmd_set(&tx->msgq_cmd, ((void*)0), ((void*)0),
  sizeof(struct bfi_enet_tx_cfg_req), &cfg_req->mh);
 bfa_msgq_cmd_post(&tx->bna->msgq, &tx->msgq_cmd);
}
