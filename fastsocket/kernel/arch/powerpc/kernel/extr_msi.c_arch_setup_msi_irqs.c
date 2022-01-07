
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* setup_msi_irqs ) (struct pci_dev*,int,int) ;} ;


 TYPE_1__ ppc_md ;
 int stub1 (struct pci_dev*,int,int) ;

int arch_setup_msi_irqs(struct pci_dev *dev, int nvec, int type)
{
 return ppc_md.setup_msi_irqs(dev, nvec, type);
}
