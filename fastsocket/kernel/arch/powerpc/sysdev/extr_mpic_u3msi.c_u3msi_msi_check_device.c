
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ENXIO ;
 int PCI_CAP_ID_MSIX ;
 scalar_t__ find_ht_magic_addr (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int u3msi_msi_check_device(struct pci_dev *pdev, int nvec, int type)
{
 if (type == PCI_CAP_ID_MSIX)
  pr_debug("u3msi: MSI-X untested, trying anyway.\n");


 if (find_ht_magic_addr(pdev) == 0) {
  pr_debug("u3msi: no magic address found for %s\n",
    pci_name(pdev));
  return -ENXIO;
 }

 return 0;
}
