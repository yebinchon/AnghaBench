
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ devfn; int broken_parity_status; TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 scalar_t__ PCI_DEVFN (int,int ) ;

__attribute__((used)) static void n2100_fixup_r8169(struct pci_dev *dev)
{
 if (dev->bus->number == 0 &&
     (dev->devfn == PCI_DEVFN(1, 0) ||
      dev->devfn == PCI_DEVFN(2, 0)))
  dev->broken_parity_status = 1;
}
