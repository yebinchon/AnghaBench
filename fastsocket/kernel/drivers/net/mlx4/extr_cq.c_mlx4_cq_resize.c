
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_mtt {scalar_t__ page_shift; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cq_context {int mtt_base_addr_h; void* mtt_base_addr_l; scalar_t__ log_page_size; void* logsize_usrpage; } ;
struct mlx4_cq {int cqn; } ;
struct mlx4_cmd_mailbox {struct mlx4_cq_context* buf; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 void* cpu_to_be32 (int) ;
 int ilog2 (int) ;
 int memset (struct mlx4_cq_context*,int ,int) ;
 int mlx4_MODIFY_CQ (struct mlx4_dev*,struct mlx4_cmd_mailbox*,int ,int ) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 int mlx4_mtt_addr (struct mlx4_dev*,struct mlx4_mtt*) ;

int mlx4_cq_resize(struct mlx4_dev *dev, struct mlx4_cq *cq,
     int entries, struct mlx4_mtt *mtt)
{
 struct mlx4_cmd_mailbox *mailbox;
 struct mlx4_cq_context *cq_context;
 u64 mtt_addr;
 int err;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 cq_context = mailbox->buf;
 memset(cq_context, 0, sizeof *cq_context);

 cq_context->logsize_usrpage = cpu_to_be32(ilog2(entries) << 24);
 cq_context->log_page_size = mtt->page_shift - 12;
 mtt_addr = mlx4_mtt_addr(dev, mtt);
 cq_context->mtt_base_addr_h = mtt_addr >> 32;
 cq_context->mtt_base_addr_l = cpu_to_be32(mtt_addr & 0xffffffff);

 err = mlx4_MODIFY_CQ(dev, mailbox, cq->cqn, 0);

 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
