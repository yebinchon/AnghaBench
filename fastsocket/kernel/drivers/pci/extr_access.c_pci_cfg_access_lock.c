
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int block_ucfg_access; } ;


 int might_sleep () ;
 int pci_lock ;
 int pci_wait_cfg (struct pci_dev*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void pci_cfg_access_lock(struct pci_dev *dev)
{
 might_sleep();

 spin_lock_irq(&pci_lock);
 if (dev->block_ucfg_access)
     pci_wait_cfg(dev);
 dev->block_ucfg_access = 1;
 spin_unlock_irq(&pci_lock);
}
