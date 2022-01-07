
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; int buf; } ;
struct TYPE_3__ {int pool; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;


 int kfree (struct mlx4_cmd_mailbox*) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;
 int pci_pool_free (int ,int ,int ) ;

void mlx4_free_cmd_mailbox(struct mlx4_dev *dev,
      struct mlx4_cmd_mailbox *mailbox)
{
 if (!mailbox)
  return;

 pci_pool_free(mlx4_priv(dev)->cmd.pool, mailbox->buf, mailbox->dma);
 kfree(mailbox);
}
