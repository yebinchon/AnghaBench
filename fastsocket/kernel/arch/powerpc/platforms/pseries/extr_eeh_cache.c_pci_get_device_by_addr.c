
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int piar_lock; } ;


 struct pci_dev* __pci_get_device_by_addr (unsigned long) ;
 TYPE_1__ pci_io_addr_cache_root ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct pci_dev *pci_get_device_by_addr(unsigned long addr)
{
 struct pci_dev *dev;
 unsigned long flags;

 spin_lock_irqsave(&pci_io_addr_cache_root.piar_lock, flags);
 dev = __pci_get_device_by_addr(addr);
 spin_unlock_irqrestore(&pci_io_addr_cache_root.piar_lock, flags);
 return dev;
}
