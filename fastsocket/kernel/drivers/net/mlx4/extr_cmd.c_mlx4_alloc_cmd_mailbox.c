
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int buf; int dma; } ;
struct TYPE_3__ {int pool; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;


 int ENOMEM ;
 struct mlx4_cmd_mailbox* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int kfree (struct mlx4_cmd_mailbox*) ;
 struct mlx4_cmd_mailbox* kmalloc (int,int ) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;
 int pci_pool_alloc (int ,int ,int *) ;

struct mlx4_cmd_mailbox *mlx4_alloc_cmd_mailbox(struct mlx4_dev *dev)
{
 struct mlx4_cmd_mailbox *mailbox;

 mailbox = kmalloc(sizeof *mailbox, GFP_KERNEL);
 if (!mailbox)
  return ERR_PTR(-ENOMEM);

 mailbox->buf = pci_pool_alloc(mlx4_priv(dev)->cmd.pool, GFP_KERNEL,
          &mailbox->dma);
 if (!mailbox->buf) {
  kfree(mailbox);
  return ERR_PTR(-ENOMEM);
 }

 return mailbox;
}
