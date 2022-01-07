
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int res_id; } ;
struct res_mtt {TYPE_2__ com; int ref_count; } ;
struct res_cq {struct res_mtt* mtt; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct TYPE_3__ {int mtt_entry_sz; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cq_context {int dummy; } ;
struct mlx4_cmd_mailbox {struct mlx4_cq_context* buf; } ;
struct mlx4_cmd_info {int dummy; } ;


 int RES_CQ ;
 int RES_CQ_HW ;
 int RES_MTT ;
 int atomic_inc (int *) ;
 int check_mtt_range (struct mlx4_dev*,int,int,int ,struct res_mtt*) ;
 int cq_get_mtt_addr (struct mlx4_cq_context*) ;
 int cq_get_mtt_size (struct mlx4_cq_context*) ;
 int cq_res_start_move_to (struct mlx4_dev*,int,int,int ,struct res_cq**) ;
 int get_res (struct mlx4_dev*,int,int,int ,struct res_mtt**) ;
 int mlx4_DMA_wrapper (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ;
 int put_res (struct mlx4_dev*,int,int ,int ) ;
 int res_abort_move (struct mlx4_dev*,int,int ,int) ;
 int res_end_move (struct mlx4_dev*,int,int ,int) ;

int mlx4_SW2HW_CQ_wrapper(struct mlx4_dev *dev, int slave,
     struct mlx4_vhcr *vhcr,
     struct mlx4_cmd_mailbox *inbox,
     struct mlx4_cmd_mailbox *outbox,
     struct mlx4_cmd_info *cmd)
{
 int err;
 int cqn = vhcr->in_modifier;
 struct mlx4_cq_context *cqc = inbox->buf;
 int mtt_base = cq_get_mtt_addr(cqc) / dev->caps.mtt_entry_sz;
 struct res_cq *cq;
 struct res_mtt *mtt;

 err = cq_res_start_move_to(dev, slave, cqn, RES_CQ_HW, &cq);
 if (err)
  return err;
 err = get_res(dev, slave, mtt_base, RES_MTT, &mtt);
 if (err)
  goto out_move;
 err = check_mtt_range(dev, slave, mtt_base, cq_get_mtt_size(cqc), mtt);
 if (err)
  goto out_put;
 err = mlx4_DMA_wrapper(dev, slave, vhcr, inbox, outbox, cmd);
 if (err)
  goto out_put;
 atomic_inc(&mtt->ref_count);
 cq->mtt = mtt;
 put_res(dev, slave, mtt->com.res_id, RES_MTT);
 res_end_move(dev, slave, RES_CQ, cqn);
 return 0;

out_put:
 put_res(dev, slave, mtt->com.res_id, RES_MTT);
out_move:
 res_abort_move(dev, slave, RES_CQ, cqn);
 return err;
}
