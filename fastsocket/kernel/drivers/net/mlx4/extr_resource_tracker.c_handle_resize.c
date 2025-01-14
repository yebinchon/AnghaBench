
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int res_id; } ;
struct res_mtt {TYPE_2__ com; int ref_count; } ;
struct res_cq {struct res_mtt* mtt; } ;
struct mlx4_vhcr {int dummy; } ;
struct TYPE_3__ {int mtt_entry_sz; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cq_context {int dummy; } ;
struct mlx4_cmd_mailbox {struct mlx4_cq_context* buf; } ;
struct mlx4_cmd_info {int dummy; } ;


 int EINVAL ;
 int RES_MTT ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int check_mtt_range (struct mlx4_dev*,int,int,int ,struct res_mtt*) ;
 int cq_get_mtt_addr (struct mlx4_cq_context*) ;
 int cq_get_mtt_size (struct mlx4_cq_context*) ;
 int get_res (struct mlx4_dev*,int,int,int ,struct res_mtt**) ;
 int mlx4_DMA_wrapper (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ;
 int put_res (struct mlx4_dev*,int,int,int ) ;

__attribute__((used)) static int handle_resize(struct mlx4_dev *dev, int slave,
    struct mlx4_vhcr *vhcr,
    struct mlx4_cmd_mailbox *inbox,
    struct mlx4_cmd_mailbox *outbox,
    struct mlx4_cmd_info *cmd,
    struct res_cq *cq)
{
 int err;
 struct res_mtt *orig_mtt;
 struct res_mtt *mtt;
 struct mlx4_cq_context *cqc = inbox->buf;
 int mtt_base = cq_get_mtt_addr(cqc) / dev->caps.mtt_entry_sz;

 err = get_res(dev, slave, cq->mtt->com.res_id, RES_MTT, &orig_mtt);
 if (err)
  return err;

 if (orig_mtt != cq->mtt) {
  err = -EINVAL;
  goto ex_put;
 }

 err = get_res(dev, slave, mtt_base, RES_MTT, &mtt);
 if (err)
  goto ex_put;

 err = check_mtt_range(dev, slave, mtt_base, cq_get_mtt_size(cqc), mtt);
 if (err)
  goto ex_put1;
 err = mlx4_DMA_wrapper(dev, slave, vhcr, inbox, outbox, cmd);
 if (err)
  goto ex_put1;
 atomic_dec(&orig_mtt->ref_count);
 put_res(dev, slave, orig_mtt->com.res_id, RES_MTT);
 atomic_inc(&mtt->ref_count);
 cq->mtt = mtt;
 put_res(dev, slave, mtt->com.res_id, RES_MTT);
 return 0;

ex_put1:
 put_res(dev, slave, mtt->com.res_id, RES_MTT);
ex_put:
 put_res(dev, slave, orig_mtt->com.res_id, RES_MTT);

 return err;

}
