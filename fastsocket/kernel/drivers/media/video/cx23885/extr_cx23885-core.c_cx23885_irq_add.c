
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int pci_irqmask_lock; int pci_irqmask; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void cx23885_irq_add(struct cx23885_dev *dev, u32 mask)
{
 unsigned long flags;
 spin_lock_irqsave(&dev->pci_irqmask_lock, flags);

 dev->pci_irqmask |= mask;

 spin_unlock_irqrestore(&dev->pci_irqmask_lock, flags);
}
