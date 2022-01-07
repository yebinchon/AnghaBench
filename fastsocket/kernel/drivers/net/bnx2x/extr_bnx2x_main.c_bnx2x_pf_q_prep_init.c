
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_7__ {int hc_rate; int sb_cq_index; int fw_sb_id; int flags; } ;
struct TYPE_6__ {int hc_rate; int sb_cq_index; int fw_sb_id; int flags; } ;
struct bnx2x_queue_init_params {size_t max_cos; int ** cxts; TYPE_2__ tx; TYPE_1__ rx; } ;
struct bnx2x_fastpath {size_t max_cos; TYPE_3__** txdata_ptr; int index; int fw_sb_id; } ;
struct bnx2x {int rx_ticks; int tx_ticks; TYPE_5__* context; } ;
struct TYPE_10__ {TYPE_4__* vcxt; } ;
struct TYPE_9__ {int eth; } ;
struct TYPE_8__ {int cid; } ;


 int BNX2X_Q_FLG_HC ;
 int BNX2X_Q_FLG_HC_EN ;
 int DP (int ,char*,int ,size_t) ;
 size_t FIRST_TX_COS_INDEX ;
 int HC_INDEX_ETH_FIRST_TX_CQ_CONS ;
 int HC_INDEX_ETH_RX_CQ_CONS ;
 int ILT_PAGE_CIDS ;
 int IS_FCOE_FP (struct bnx2x_fastpath*) ;
 int NETIF_MSG_IFUP ;
 int __set_bit (int ,int *) ;

__attribute__((used)) static void bnx2x_pf_q_prep_init(struct bnx2x *bp,
 struct bnx2x_fastpath *fp, struct bnx2x_queue_init_params *init_params)
{
 u8 cos;
 int cxt_index, cxt_offset;


 if (!IS_FCOE_FP(fp)) {
  __set_bit(BNX2X_Q_FLG_HC, &init_params->rx.flags);
  __set_bit(BNX2X_Q_FLG_HC, &init_params->tx.flags);




  __set_bit(BNX2X_Q_FLG_HC_EN, &init_params->rx.flags);
  __set_bit(BNX2X_Q_FLG_HC_EN, &init_params->tx.flags);


  init_params->rx.hc_rate = bp->rx_ticks ?
   (1000000 / bp->rx_ticks) : 0;
  init_params->tx.hc_rate = bp->tx_ticks ?
   (1000000 / bp->tx_ticks) : 0;


  init_params->rx.fw_sb_id = init_params->tx.fw_sb_id =
   fp->fw_sb_id;





  init_params->rx.sb_cq_index = HC_INDEX_ETH_RX_CQ_CONS;
  init_params->tx.sb_cq_index = HC_INDEX_ETH_FIRST_TX_CQ_CONS;
 }


 init_params->max_cos = fp->max_cos;

 DP(NETIF_MSG_IFUP, "fp: %d setting queue params max cos to: %d\n",
     fp->index, init_params->max_cos);


 for (cos = FIRST_TX_COS_INDEX; cos < init_params->max_cos; cos++) {
  cxt_index = fp->txdata_ptr[cos]->cid / ILT_PAGE_CIDS;
  cxt_offset = fp->txdata_ptr[cos]->cid - (cxt_index *
    ILT_PAGE_CIDS);
  init_params->cxts[cos] =
   &bp->context[cxt_index].vcxt[cxt_offset].eth;
 }
}
