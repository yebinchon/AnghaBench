
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_MASTER ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 int pcibios_disable_device (struct pci_dev*) ;

__attribute__((used)) static void do_pci_disable_device(struct pci_dev *dev)
{
 u16 pci_command;

 pci_read_config_word(dev, PCI_COMMAND, &pci_command);
 if (pci_command & PCI_COMMAND_MASTER) {
  pci_command &= ~PCI_COMMAND_MASTER;
  pci_write_config_word(dev, PCI_COMMAND, pci_command);
 }

 pcibios_disable_device(dev);
}
