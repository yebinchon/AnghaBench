
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_CAP_ID_MSIX ;
 int msi_control_reg (int) ;
 int multi_msix_capable (int ) ;
 int pci_find_capability (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;

int pci_msix_table_size(struct pci_dev *dev)
{
 int pos;
 u16 control;

 pos = pci_find_capability(dev, PCI_CAP_ID_MSIX);
 if (!pos)
  return 0;

 pci_read_config_word(dev, msi_control_reg(pos), &control);
 return multi_msix_capable(control);
}
