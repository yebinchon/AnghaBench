
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct bnx2x_virtf {int cfg_flags; int leading_rss; int abs_vfid; int sp_cl_id; } ;
struct TYPE_12__ {void* fw_sb_id; int tss_leading_cl_id; } ;
struct bnx2x_rxq_setup_params {int max_tpa_queues; int rss_engine_id; void* fw_sb_id; int cl_qzone_id; } ;
struct TYPE_11__ {int stat_id; int spcl_id; } ;
struct bnx2x_queue_setup_params {unsigned long flags; TYPE_6__ txq_params; struct bnx2x_rxq_setup_params rxq_params; TYPE_5__ gen_params; } ;
struct TYPE_10__ {unsigned long flags; void* fw_sb_id; } ;
struct TYPE_9__ {unsigned long flags; void* fw_sb_id; } ;
struct bnx2x_queue_init_params {int * cxts; TYPE_4__ tx; TYPE_3__ rx; } ;
struct TYPE_7__ {struct bnx2x_queue_init_params init; } ;
struct TYPE_8__ {TYPE_1__ params; } ;
struct bnx2x_vfop_qctor_params {struct bnx2x_queue_setup_params prep_qsetup; TYPE_2__ qstate; } ;
struct bnx2x_vf_queue {int sb_idx; int cxt; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int ) ;
 int BNX2X_Q_FLG_ANTI_SPOOF ;
 int BNX2X_Q_FLG_HC ;
 int BNX2X_Q_FLG_HC_EN ;
 int BNX2X_Q_FLG_LEADING_RSS ;
 int BNX2X_Q_FLG_MCAST ;
 int BNX2X_Q_FLG_STATS ;
 int BNX2X_Q_FLG_TPA ;
 int BNX2X_Q_FLG_TX_SEC ;
 int BNX2X_Q_FLG_TX_SWITCH ;
 int BNX2X_Q_FLG_ZERO_STATS ;
 int BNX2X_Q_TYPE_HAS_RX ;
 int BNX2X_Q_TYPE_HAS_TX ;
 int BNX2X_VF_MAX_TPA_AGG_QUEUES ;
 int FW_VF_HANDLE (int ) ;
 int VF_CFG_FW_FC ;
 int __set_bit (int ,unsigned long*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;
 void* vf_igu_sb (struct bnx2x_virtf*,int ) ;
 scalar_t__ vfq_is_leading (struct bnx2x_vf_queue*) ;
 int vfq_qzone_id (struct bnx2x_virtf*,struct bnx2x_vf_queue*) ;
 int vfq_stat_id (struct bnx2x_virtf*,struct bnx2x_vf_queue*) ;

void bnx2x_vfop_qctor_prep(struct bnx2x *bp,
      struct bnx2x_virtf *vf,
      struct bnx2x_vf_queue *q,
      struct bnx2x_vfop_qctor_params *p,
      unsigned long q_type)
{
 struct bnx2x_queue_init_params *init_p = &p->qstate.params.init;
 struct bnx2x_queue_setup_params *setup_p = &p->prep_qsetup;




 if (test_bit(BNX2X_Q_FLG_HC, &init_p->rx.flags))
  __set_bit(BNX2X_Q_FLG_HC_EN, &init_p->rx.flags);

 if (test_bit(BNX2X_Q_FLG_HC, &init_p->tx.flags))
  __set_bit(BNX2X_Q_FLG_HC_EN, &init_p->tx.flags);


 init_p->rx.fw_sb_id = vf_igu_sb(vf, q->sb_idx);
 init_p->tx.fw_sb_id = vf_igu_sb(vf, q->sb_idx);


 init_p->cxts[0] = q->cxt;




 setup_p->gen_params.spcl_id = vf->sp_cl_id;
 setup_p->gen_params.stat_id = vfq_stat_id(vf, q);






 if (vf->cfg_flags & VF_CFG_FW_FC)
  BNX2X_ERR("No support for pause to VFs (abs_vfid: %d)\n",
     vf->abs_vfid);




 if (test_bit(BNX2X_Q_FLG_STATS, &setup_p->flags))
  __set_bit(BNX2X_Q_FLG_ZERO_STATS, &setup_p->flags);




 __set_bit(BNX2X_Q_FLG_TX_SWITCH, &setup_p->flags);
 __set_bit(BNX2X_Q_FLG_TX_SEC, &setup_p->flags);
 __set_bit(BNX2X_Q_FLG_ANTI_SPOOF, &setup_p->flags);

 if (vfq_is_leading(q)) {
  __set_bit(BNX2X_Q_FLG_LEADING_RSS, &setup_p->flags);
  __set_bit(BNX2X_Q_FLG_MCAST, &setup_p->flags);
 }


 if (test_bit(BNX2X_Q_TYPE_HAS_RX, &q_type)) {
  struct bnx2x_rxq_setup_params *rxq_p = &setup_p->rxq_params;

  rxq_p->cl_qzone_id = vfq_qzone_id(vf, q);
  rxq_p->fw_sb_id = vf_igu_sb(vf, q->sb_idx);
  rxq_p->rss_engine_id = FW_VF_HANDLE(vf->abs_vfid);

  if (test_bit(BNX2X_Q_FLG_TPA, &setup_p->flags))
   rxq_p->max_tpa_queues = BNX2X_VF_MAX_TPA_AGG_QUEUES;
 }


 if (test_bit(BNX2X_Q_TYPE_HAS_TX, &q_type)) {
  setup_p->txq_params.tss_leading_cl_id = vf->leading_rss;
  setup_p->txq_params.fw_sb_id = vf_igu_sb(vf, q->sb_idx);
 }
}
