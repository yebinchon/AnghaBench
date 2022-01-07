
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_CAP_ID_MSIX ;
 int pr_debug (char*) ;

__attribute__((used)) static int pasemi_msi_check_device(struct pci_dev *pdev, int nvec, int type)
{
 if (type == PCI_CAP_ID_MSIX)
  pr_debug("pasemi_msi: MSI-X untested, trying anyway\n");

 return 0;
}
