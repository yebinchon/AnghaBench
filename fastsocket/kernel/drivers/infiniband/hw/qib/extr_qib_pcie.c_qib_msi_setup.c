
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qib_devdata {int msi_data; int msi_hi; int msi_lo; struct pci_dev* pcidev; } ;
struct pci_dev {int dummy; } ;


 scalar_t__ PCI_MSI_ADDRESS_HI ;
 scalar_t__ PCI_MSI_ADDRESS_LO ;
 int PCI_MSI_FLAGS ;
 int PCI_MSI_FLAGS_64BIT ;
 int pci_enable_msi (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int qib_dev_err (struct qib_devdata*,char*,int) ;

__attribute__((used)) static int qib_msi_setup(struct qib_devdata *dd, int pos)
{
 struct pci_dev *pdev = dd->pcidev;
 u16 control;
 int ret;

 ret = pci_enable_msi(pdev);
 if (ret)
  qib_dev_err(dd,
   "pci_enable_msi failed: %d, interrupts may not work\n",
   ret);


 pci_read_config_dword(pdev, pos + PCI_MSI_ADDRESS_LO,
         &dd->msi_lo);
 pci_read_config_dword(pdev, pos + PCI_MSI_ADDRESS_HI,
         &dd->msi_hi);
 pci_read_config_word(pdev, pos + PCI_MSI_FLAGS, &control);

 pci_read_config_word(pdev, pos + ((control & PCI_MSI_FLAGS_64BIT)
        ? 12 : 8),
        &dd->msi_data);
 return ret;
}
