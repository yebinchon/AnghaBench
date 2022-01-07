
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int dbell_map; int pool; } ;
struct mthca_dev {TYPE_1__ cmd; int hcr; } ;


 int MTHCA_CMD_POST_DOORBELLS ;
 int iounmap (int ) ;
 int pci_pool_destroy (int ) ;

void mthca_cmd_cleanup(struct mthca_dev *dev)
{
 pci_pool_destroy(dev->cmd.pool);
 iounmap(dev->hcr);
 if (dev->cmd.flags & MTHCA_CMD_POST_DOORBELLS)
  iounmap(dev->cmd.dbell_map);
}
