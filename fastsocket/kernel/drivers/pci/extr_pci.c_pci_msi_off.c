
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_CAP_ID_MSI ;
 int PCI_CAP_ID_MSIX ;
 scalar_t__ PCI_MSIX_FLAGS ;
 int PCI_MSIX_FLAGS_ENABLE ;
 scalar_t__ PCI_MSI_FLAGS ;
 int PCI_MSI_FLAGS_ENABLE ;
 int pci_find_capability (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int ) ;

void pci_msi_off(struct pci_dev *dev)
{
 int pos;
 u16 control;

 pos = pci_find_capability(dev, PCI_CAP_ID_MSI);
 if (pos) {
  pci_read_config_word(dev, pos + PCI_MSI_FLAGS, &control);
  control &= ~PCI_MSI_FLAGS_ENABLE;
  pci_write_config_word(dev, pos + PCI_MSI_FLAGS, control);
 }
 pos = pci_find_capability(dev, PCI_CAP_ID_MSIX);
 if (pos) {
  pci_read_config_word(dev, pos + PCI_MSIX_FLAGS, &control);
  control &= ~PCI_MSIX_FLAGS_ENABLE;
  pci_write_config_word(dev, pos + PCI_MSIX_FLAGS, control);
 }
}
