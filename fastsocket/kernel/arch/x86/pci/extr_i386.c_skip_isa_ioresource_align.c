
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {int bridge_ctl; } ;


 int PCI_BRIDGE_CTL_ISA ;
 int PCI_CAN_SKIP_ISA_ALIGN ;
 int pci_probe ;

__attribute__((used)) static int
skip_isa_ioresource_align(struct pci_dev *dev) {

 if ((pci_probe & PCI_CAN_SKIP_ISA_ALIGN) &&
     !(dev->bus->bridge_ctl & PCI_BRIDGE_CTL_ISA))
  return 1;
 return 0;
}
