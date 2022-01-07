
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct res_srq {struct res_mtt* mtt; } ;
struct TYPE_4__ {int res_id; } ;
struct res_mtt {TYPE_2__ com; int ref_count; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_srq_context {int state_logsize_srqn; } ;
struct TYPE_3__ {int mtt_entry_sz; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {struct mlx4_srq_context* buf; } ;
struct mlx4_cmd_info {int dummy; } ;


 int EINVAL ;
 int RES_MTT ;
 int RES_SRQ ;
 int RES_SRQ_HW ;
 int atomic_inc (int *) ;
 int be32_to_cpu (int ) ;
 int check_mtt_range (struct mlx4_dev*,int,int,int ,struct res_mtt*) ;
 int get_res (struct mlx4_dev*,int,int,int ,struct res_mtt**) ;
 int mlx4_DMA_wrapper (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ;
 int put_res (struct mlx4_dev*,int,int ,int ) ;
 int res_abort_move (struct mlx4_dev*,int,int ,int) ;
 int res_end_move (struct mlx4_dev*,int,int ,int) ;
 int srq_get_mtt_addr (struct mlx4_srq_context*) ;
 int srq_get_mtt_size (struct mlx4_srq_context*) ;
 int srq_res_start_move_to (struct mlx4_dev*,int,int,int ,struct res_srq**) ;

int mlx4_SW2HW_SRQ_wrapper(struct mlx4_dev *dev, int slave,
      struct mlx4_vhcr *vhcr,
      struct mlx4_cmd_mailbox *inbox,
      struct mlx4_cmd_mailbox *outbox,
      struct mlx4_cmd_info *cmd)
{
 int err;
 int srqn = vhcr->in_modifier;
 struct res_mtt *mtt;
 struct res_srq *srq;
 struct mlx4_srq_context *srqc = inbox->buf;
 int mtt_base = srq_get_mtt_addr(srqc) / dev->caps.mtt_entry_sz;

 if (srqn != (be32_to_cpu(srqc->state_logsize_srqn) & 0xffffff))
  return -EINVAL;

 err = srq_res_start_move_to(dev, slave, srqn, RES_SRQ_HW, &srq);
 if (err)
  return err;
 err = get_res(dev, slave, mtt_base, RES_MTT, &mtt);
 if (err)
  goto ex_abort;
 err = check_mtt_range(dev, slave, mtt_base, srq_get_mtt_size(srqc),
         mtt);
 if (err)
  goto ex_put_mtt;

 err = mlx4_DMA_wrapper(dev, slave, vhcr, inbox, outbox, cmd);
 if (err)
  goto ex_put_mtt;

 atomic_inc(&mtt->ref_count);
 srq->mtt = mtt;
 put_res(dev, slave, mtt->com.res_id, RES_MTT);
 res_end_move(dev, slave, RES_SRQ, srqn);
 return 0;

ex_put_mtt:
 put_res(dev, slave, mtt->com.res_id, RES_MTT);
ex_abort:
 res_abort_move(dev, slave, RES_SRQ, srqn);

 return err;
}
