
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ from_state; } ;
struct res_srq {TYPE_1__ com; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;


 int EBUSY ;
 int RES_SRQ ;
 scalar_t__ RES_SRQ_HW ;
 int get_res (struct mlx4_dev*,int,int,int ,struct res_srq**) ;
 int mlx4_DMA_wrapper (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ;
 int put_res (struct mlx4_dev*,int,int,int ) ;

int mlx4_QUERY_SRQ_wrapper(struct mlx4_dev *dev, int slave,
      struct mlx4_vhcr *vhcr,
      struct mlx4_cmd_mailbox *inbox,
      struct mlx4_cmd_mailbox *outbox,
      struct mlx4_cmd_info *cmd)
{
 int err;
 int srqn = vhcr->in_modifier;
 struct res_srq *srq;

 err = get_res(dev, slave, srqn, RES_SRQ, &srq);
 if (err)
  return err;
 if (srq->com.from_state != RES_SRQ_HW) {
  err = -EBUSY;
  goto out;
 }
 err = mlx4_DMA_wrapper(dev, slave, vhcr, inbox, outbox, cmd);
out:
 put_res(dev, slave, srqn, RES_SRQ);
 return err;
}
