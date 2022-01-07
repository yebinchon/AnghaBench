
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_mailbox {int dma; int buf; } ;
struct TYPE_2__ {int pool; } ;
struct mthca_dev {TYPE_1__ cmd; } ;


 int kfree (struct mthca_mailbox*) ;
 int pci_pool_free (int ,int ,int ) ;

void mthca_free_mailbox(struct mthca_dev *dev, struct mthca_mailbox *mailbox)
{
 if (!mailbox)
  return;

 pci_pool_free(dev->cmd.pool, mailbox->buf, mailbox->dma);
 kfree(mailbox);
}
