
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int PCI_MEMORY_BASE ;
 int PCI_PREF_BASE_UPPER32 ;
 int PCI_PREF_LIMIT_UPPER32 ;
 int PCI_PREF_MEMORY_BASE ;
 int dev_info (int *,char*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;

void pci_disable_bridge_window(struct pci_dev *dev)
{
 dev_info(&dev->dev, "disabling bridge mem windows\n");


 pci_write_config_dword(dev, PCI_MEMORY_BASE, 0x0000fff0);


 pci_write_config_dword(dev, PCI_PREF_LIMIT_UPPER32, 0);
 pci_write_config_dword(dev, PCI_PREF_MEMORY_BASE, 0x0000fff0);
 pci_write_config_dword(dev, PCI_PREF_BASE_UPPER32, 0xffffffff);
}
