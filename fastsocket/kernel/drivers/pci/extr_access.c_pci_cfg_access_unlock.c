
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ block_ucfg_access; } ;


 int WARN_ON (int) ;
 int pci_cfg_wait ;
 int pci_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_all (int *) ;

void pci_cfg_access_unlock(struct pci_dev *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&pci_lock, flags);



 WARN_ON(!dev->block_ucfg_access);

 dev->block_ucfg_access = 0;
 wake_up_all(&pci_cfg_wait);
 spin_unlock_irqrestore(&pci_lock, flags);
}
