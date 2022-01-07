
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ PCI_MSI_FLAGS ;
 int PCI_MSI_FLAGS_ENABLE ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int ) ;

__attribute__((used)) static void msi_set_enable(struct pci_dev *dev, int pos, int enable)
{
 u16 control;

 BUG_ON(!pos);

 pci_read_config_word(dev, pos + PCI_MSI_FLAGS, &control);
 control &= ~PCI_MSI_FLAGS_ENABLE;
 if (enable)
  control |= PCI_MSI_FLAGS_ENABLE;
 pci_write_config_word(dev, pos + PCI_MSI_FLAGS, control);
}
