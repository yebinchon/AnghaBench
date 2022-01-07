
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int PCI_CAP_ID_MSIX ;
 int PCI_MSIX_FLAGS_ENABLE ;
 int pci_find_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,int,int *) ;
 int pci_write_config_dword (struct pci_dev*,int,int ) ;

__attribute__((used)) static void netxen_set_msix_bit(struct pci_dev *pdev, int enable)
{
 u32 control;
 int pos;

 pos = pci_find_capability(pdev, PCI_CAP_ID_MSIX);
 if (pos) {
  pci_read_config_dword(pdev, pos, &control);
  if (enable)
   control |= PCI_MSIX_FLAGS_ENABLE;
  else
   control = 0;
  pci_write_config_dword(pdev, pos, control);
 }
}
