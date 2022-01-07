
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cq_context {void* cq_period; void* cq_max_count; } ;
struct mlx4_cq {int cqn; } ;
struct mlx4_cmd_mailbox {struct mlx4_cq_context* buf; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 void* cpu_to_be16 (int ) ;
 int memset (struct mlx4_cq_context*,int ,int) ;
 int mlx4_MODIFY_CQ (struct mlx4_dev*,struct mlx4_cmd_mailbox*,int ,int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

int mlx4_cq_modify(struct mlx4_dev *dev, struct mlx4_cq *cq,
     u16 count, u16 period)
{
 struct mlx4_cmd_mailbox *mailbox;
 struct mlx4_cq_context *cq_context;
 int err;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 cq_context = mailbox->buf;
 memset(cq_context, 0, sizeof *cq_context);

 cq_context->cq_max_count = cpu_to_be16(count);
 cq_context->cq_period = cpu_to_be16(period);

 err = mlx4_MODIFY_CQ(dev, mailbox, cq->cqn, 1);

 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
