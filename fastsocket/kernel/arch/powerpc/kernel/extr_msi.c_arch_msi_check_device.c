
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* msi_check_device ) (struct pci_dev*,int,int) ;int teardown_msi_irqs; int setup_msi_irqs; } ;


 int ENOSYS ;
 int PCI_CAP_ID_MSI ;
 TYPE_1__ ppc_md ;
 int pr_debug (char*) ;
 int stub1 (struct pci_dev*,int,int) ;

int arch_msi_check_device(struct pci_dev* dev, int nvec, int type)
{
 if (!ppc_md.setup_msi_irqs || !ppc_md.teardown_msi_irqs) {
  pr_debug("msi: Platform doesn't provide MSI callbacks.\n");
  return -ENOSYS;
 }


 if (type == PCI_CAP_ID_MSI && nvec > 1)
  return 1;

 if (ppc_md.msi_check_device) {
  pr_debug("msi: Using platform check routine.\n");
  return ppc_md.msi_check_device(dev, nvec, type);
 }

        return 0;
}
