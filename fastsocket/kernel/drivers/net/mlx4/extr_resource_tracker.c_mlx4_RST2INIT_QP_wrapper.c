
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct res_srq {int ref_count; } ;
struct res_qp {int local_qpn; int qpc_flags; struct res_srq* srq; struct res_srq* scq; struct res_srq* rcq; struct res_srq* mtt; scalar_t__ sched_queue; } ;
struct res_mtt {int ref_count; } ;
struct res_cq {int ref_count; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_qp_context {int flags; int local_qpn; } ;
struct TYPE_2__ {int mtt_entry_sz; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {struct mlx4_qp_context* buf; } ;
struct mlx4_cmd_info {int dummy; } ;


 int RES_CQ ;
 int RES_MTT ;
 int RES_QP ;
 int RES_QP_HW ;
 int RES_SRQ ;
 int adjust_proxy_tun_qkey (struct mlx4_dev*,struct mlx4_vhcr*,struct mlx4_qp_context*) ;
 int atomic_inc (int *) ;
 int be32_to_cpu (int ) ;
 int check_mtt_range (struct mlx4_dev*,int,int,int,struct res_srq*) ;
 int get_res (struct mlx4_dev*,int,int,int ,struct res_srq**) ;
 int mlx4_DMA_wrapper (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ;
 int put_res (struct mlx4_dev*,int,int,int ) ;
 int qp_get_mtt_addr (struct mlx4_qp_context*) ;
 int qp_get_mtt_size (struct mlx4_qp_context*) ;
 int qp_get_rcqn (struct mlx4_qp_context*) ;
 int qp_get_scqn (struct mlx4_qp_context*) ;
 int qp_get_srqn (struct mlx4_qp_context*) ;
 int qp_res_start_move_to (struct mlx4_dev*,int,int,int ,struct res_qp**,int ) ;
 int res_abort_move (struct mlx4_dev*,int,int ,int) ;
 int res_end_move (struct mlx4_dev*,int,int ,int) ;
 int update_pkey_index (struct mlx4_dev*,int,struct mlx4_cmd_mailbox*) ;

int mlx4_RST2INIT_QP_wrapper(struct mlx4_dev *dev, int slave,
        struct mlx4_vhcr *vhcr,
        struct mlx4_cmd_mailbox *inbox,
        struct mlx4_cmd_mailbox *outbox,
        struct mlx4_cmd_info *cmd)
{
 int err;
 int qpn = vhcr->in_modifier & 0x7fffff;
 struct res_mtt *mtt;
 struct res_qp *qp;
 struct mlx4_qp_context *qpc = inbox->buf + 8;
 int mtt_base = qp_get_mtt_addr(qpc) / dev->caps.mtt_entry_sz;
 int mtt_size = qp_get_mtt_size(qpc);
 struct res_cq *rcq;
 struct res_cq *scq;
 int rcqn = qp_get_rcqn(qpc);
 int scqn = qp_get_scqn(qpc);
 u32 srqn = qp_get_srqn(qpc) & 0xffffff;
 int use_srq = (qp_get_srqn(qpc) >> 24) & 1;
 struct res_srq *srq;
 int local_qpn = be32_to_cpu(qpc->local_qpn) & 0xffffff;

 err = qp_res_start_move_to(dev, slave, qpn, RES_QP_HW, &qp, 0);
 if (err)
  return err;
 qp->local_qpn = local_qpn;
 qp->sched_queue = 0;
 qp->qpc_flags = be32_to_cpu(qpc->flags);

 err = get_res(dev, slave, mtt_base, RES_MTT, &mtt);
 if (err)
  goto ex_abort;

 err = check_mtt_range(dev, slave, mtt_base, mtt_size, mtt);
 if (err)
  goto ex_put_mtt;

 err = get_res(dev, slave, rcqn, RES_CQ, &rcq);
 if (err)
  goto ex_put_mtt;

 if (scqn != rcqn) {
  err = get_res(dev, slave, scqn, RES_CQ, &scq);
  if (err)
   goto ex_put_rcq;
 } else
  scq = rcq;

 if (use_srq) {
  err = get_res(dev, slave, srqn, RES_SRQ, &srq);
  if (err)
   goto ex_put_scq;
 }

 adjust_proxy_tun_qkey(dev, vhcr, qpc);
 update_pkey_index(dev, slave, inbox);
 err = mlx4_DMA_wrapper(dev, slave, vhcr, inbox, outbox, cmd);
 if (err)
  goto ex_put_srq;
 atomic_inc(&mtt->ref_count);
 qp->mtt = mtt;
 atomic_inc(&rcq->ref_count);
 qp->rcq = rcq;
 atomic_inc(&scq->ref_count);
 qp->scq = scq;

 if (scqn != rcqn)
  put_res(dev, slave, scqn, RES_CQ);

 if (use_srq) {
  atomic_inc(&srq->ref_count);
  put_res(dev, slave, srqn, RES_SRQ);
  qp->srq = srq;
 }
 put_res(dev, slave, rcqn, RES_CQ);
 put_res(dev, slave, mtt_base, RES_MTT);
 res_end_move(dev, slave, RES_QP, qpn);

 return 0;

ex_put_srq:
 if (use_srq)
  put_res(dev, slave, srqn, RES_SRQ);
ex_put_scq:
 if (scqn != rcqn)
  put_res(dev, slave, scqn, RES_CQ);
ex_put_rcq:
 put_res(dev, slave, rcqn, RES_CQ);
ex_put_mtt:
 put_res(dev, slave, mtt_base, RES_MTT);
ex_abort:
 res_abort_move(dev, slave, RES_QP, qpn);

 return err;
}
