
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int EIO ;
 int PCI_D0 ;
 int pci_fixup_device (int ,struct pci_dev*) ;
 int pci_fixup_enable ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pcibios_enable_device (struct pci_dev*,int) ;

__attribute__((used)) static int do_pci_enable_device(struct pci_dev *dev, int bars)
{
 int err;

 err = pci_set_power_state(dev, PCI_D0);
 if (err < 0 && err != -EIO)
  return err;
 err = pcibios_enable_device(dev, bars);
 if (err < 0)
  return err;
 pci_fixup_device(pci_fixup_enable, dev);

 return 0;
}
