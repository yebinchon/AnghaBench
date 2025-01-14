
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_13__ {int sb_index; int cache_line_log; int sge_buf_sz; int max_sge_pkt; int tpa_agg_sz; int buf_sz; int rcq_np_addr; int rcq_addr; int sge_addr; int rxq_addr; int drop_flags; int mtu; int flags; int hc_rate; int vf_sb; } ;
struct TYPE_21__ {int traffic_type; int sb_index; int txq_addr; int flags; int hc_rate; int vf_sb; } ;
struct vfpf_setup_q_tlv {scalar_t__ vf_qid; int param_valid; TYPE_10__ rxq; TYPE_7__ txq; } ;
struct TYPE_22__ {unsigned long flags; int sb_cq_index; int hc_rate; } ;
struct TYPE_20__ {unsigned long flags; int sb_cq_index; int hc_rate; } ;
struct bnx2x_queue_init_params {TYPE_8__ rx; TYPE_6__ tx; } ;
struct TYPE_17__ {struct bnx2x_queue_init_params init; } ;
struct TYPE_18__ {TYPE_3__ params; } ;
struct TYPE_23__ {int mtu; } ;
struct bnx2x_rxq_setup_params {int sb_cq_index; int cache_line_log; int sge_buf_sz; int max_sges_pkt; int tpa_agg_sz; int buf_sz; int rcq_np_map; int rcq_map; int sge_map; int dscr_map; int drop_flags; } ;
struct bnx2x_txq_setup_params {int traffic_type; int sb_cq_index; int dscr_map; } ;
struct bnx2x_queue_setup_params {unsigned long flags; TYPE_9__ gen_params; struct bnx2x_rxq_setup_params rxq_params; struct bnx2x_txq_setup_params txq_params; } ;
struct TYPE_14__ {TYPE_4__ qstate; struct bnx2x_queue_setup_params prep_qsetup; } ;
struct TYPE_19__ {TYPE_11__ qctor; } ;
struct bnx2x_virtf {int op_rc; TYPE_5__ op_params; } ;
struct bnx2x_vfop_cmd {int block; int (* done ) (struct bnx2x*,struct bnx2x_virtf*) ;} ;
struct bnx2x_vf_queue {int index; int sb_idx; } ;
struct bnx2x_vf_mbx {TYPE_2__* msg; } ;
struct bnx2x {int dummy; } ;
struct TYPE_15__ {struct vfpf_setup_q_tlv setup_q; } ;
struct TYPE_16__ {TYPE_1__ req; } ;


 int BNX2X_ERR (char*,scalar_t__,scalar_t__) ;
 int BNX2X_Q_FLG_ACTIVE ;
 int BNX2X_Q_TYPE_HAS_RX ;
 int BNX2X_Q_TYPE_HAS_TX ;
 int EINVAL ;
 int VFPF_RXQ_VALID ;
 int VFPF_TXQ_VALID ;
 int __set_bit (int ,unsigned long*) ;
 int bnx2x_vf_mbx_resp (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vf_mbx_set_q_flags (struct bnx2x*,int ,unsigned long*) ;
 int bnx2x_vfop_qctor_dump_rx (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_queue_init_params*,struct bnx2x_queue_setup_params*,int ,int ) ;
 int bnx2x_vfop_qctor_dump_tx (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_queue_init_params*,struct bnx2x_queue_setup_params*,int ,int ) ;
 int bnx2x_vfop_qctor_prep (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_queue*,TYPE_11__*,unsigned long) ;
 int bnx2x_vfop_qsetup_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*,int ) ;
 int memset (TYPE_11__*,int ,int) ;
 scalar_t__ vf_rxq_count (struct bnx2x_virtf*) ;
 struct bnx2x_vf_queue* vfq_get (struct bnx2x_virtf*,scalar_t__) ;

__attribute__((used)) static void bnx2x_vf_mbx_setup_q(struct bnx2x *bp, struct bnx2x_virtf *vf,
     struct bnx2x_vf_mbx *mbx)
{
 struct vfpf_setup_q_tlv *setup_q = &mbx->msg->req.setup_q;
 struct bnx2x_vfop_cmd cmd = {
  .done = bnx2x_vf_mbx_resp,
  .block = 0,
 };


 if (setup_q->vf_qid >= vf_rxq_count(vf)) {
  BNX2X_ERR("vf_qid %d invalid, max queue count is %d\n",
     setup_q->vf_qid, vf_rxq_count(vf));
  vf->op_rc = -EINVAL;
  goto response;
 }




 if (setup_q->param_valid & (VFPF_RXQ_VALID|VFPF_TXQ_VALID)) {
  struct bnx2x_vf_queue *q = vfq_get(vf, setup_q->vf_qid);
  unsigned long q_type = 0;

  struct bnx2x_queue_init_params *init_p;
  struct bnx2x_queue_setup_params *setup_p;


  memset(&vf->op_params.qctor, 0 , sizeof(vf->op_params.qctor));
  setup_p = &vf->op_params.qctor.prep_qsetup;
  init_p = &vf->op_params.qctor.qstate.params.init;


  __set_bit(BNX2X_Q_FLG_ACTIVE, &setup_p->flags);

  if (setup_q->param_valid & VFPF_TXQ_VALID) {
   struct bnx2x_txq_setup_params *txq_params =
    &setup_p->txq_params;

   __set_bit(BNX2X_Q_TYPE_HAS_TX, &q_type);


   q->sb_idx = setup_q->txq.vf_sb;


   init_p->tx.hc_rate = setup_q->txq.hc_rate;
   init_p->tx.sb_cq_index = setup_q->txq.sb_index;

   bnx2x_vf_mbx_set_q_flags(bp, setup_q->txq.flags,
       &init_p->tx.flags);


   bnx2x_vf_mbx_set_q_flags(bp, setup_q->txq.flags,
       &setup_p->flags);




   txq_params->dscr_map = setup_q->txq.txq_addr;
   txq_params->sb_cq_index = setup_q->txq.sb_index;
   txq_params->traffic_type = setup_q->txq.traffic_type;

   bnx2x_vfop_qctor_dump_tx(bp, vf, init_p, setup_p,
       q->index, q->sb_idx);
  }

  if (setup_q->param_valid & VFPF_RXQ_VALID) {
   struct bnx2x_rxq_setup_params *rxq_params =
       &setup_p->rxq_params;

   __set_bit(BNX2X_Q_TYPE_HAS_RX, &q_type);




   q->sb_idx = setup_q->rxq.vf_sb;


   init_p->rx.hc_rate = setup_q->rxq.hc_rate;
   init_p->rx.sb_cq_index = setup_q->rxq.sb_index;
   bnx2x_vf_mbx_set_q_flags(bp, setup_q->rxq.flags,
       &init_p->rx.flags);


   bnx2x_vf_mbx_set_q_flags(bp, setup_q->rxq.flags,
       &setup_p->flags);


   setup_p->gen_params.mtu = setup_q->rxq.mtu;


   rxq_params->drop_flags = setup_q->rxq.drop_flags;
   rxq_params->dscr_map = setup_q->rxq.rxq_addr;
   rxq_params->sge_map = setup_q->rxq.sge_addr;
   rxq_params->rcq_map = setup_q->rxq.rcq_addr;
   rxq_params->rcq_np_map = setup_q->rxq.rcq_np_addr;
   rxq_params->buf_sz = setup_q->rxq.buf_sz;
   rxq_params->tpa_agg_sz = setup_q->rxq.tpa_agg_sz;
   rxq_params->max_sges_pkt = setup_q->rxq.max_sge_pkt;
   rxq_params->sge_buf_sz = setup_q->rxq.sge_buf_sz;
   rxq_params->cache_line_log =
    setup_q->rxq.cache_line_log;
   rxq_params->sb_cq_index = setup_q->rxq.sb_index;

   bnx2x_vfop_qctor_dump_rx(bp, vf, init_p, setup_p,
       q->index, q->sb_idx);
  }

  bnx2x_vfop_qctor_prep(bp, vf, q, &vf->op_params.qctor, q_type);

  vf->op_rc = bnx2x_vfop_qsetup_cmd(bp, vf, &cmd, q->index);
  if (vf->op_rc)
   goto response;
  return;
 }
response:
 bnx2x_vf_mbx_resp(bp, vf);
}
