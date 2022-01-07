
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int irq; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int eeh_mode; } ;


 int EEH_MODE_IRQ_DISABLED ;
 TYPE_1__* PCI_DN (struct device_node*) ;
 int enable_irq (int ) ;
 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;

__attribute__((used)) static void eeh_enable_irq(struct pci_dev *dev)
{
 struct device_node *dn = pci_device_to_OF_node(dev);

 if ((PCI_DN(dn)->eeh_mode) & EEH_MODE_IRQ_DISABLED) {
  PCI_DN(dn)->eeh_mode &= ~EEH_MODE_IRQ_DISABLED;
  enable_irq(dev->irq);
 }
}
