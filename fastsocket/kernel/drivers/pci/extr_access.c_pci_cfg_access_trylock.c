
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int block_ucfg_access; } ;


 int pci_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool pci_cfg_access_trylock(struct pci_dev *dev)
 {
 unsigned long flags;
 bool locked = 1;

 spin_lock_irqsave(&pci_lock, flags);
 if (dev->block_ucfg_access)
  locked = 0;
 else
  dev->block_ucfg_access = 1;
 spin_unlock_irqrestore(&pci_lock, flags);

 return locked;
}
