
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int is_physfn; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ sriov_migration (struct pci_dev*) ;

irqreturn_t pci_sriov_migration(struct pci_dev *dev)
{
 if (!dev->is_physfn)
  return IRQ_NONE;

 return sriov_migration(dev) ? IRQ_HANDLED : IRQ_NONE;
}
