
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* teardown_msi_irqs ) (struct pci_dev*) ;} ;


 TYPE_1__ ppc_md ;
 int stub1 (struct pci_dev*) ;

void arch_teardown_msi_irqs(struct pci_dev *dev)
{
 ppc_md.teardown_msi_irqs(dev);
}
