
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_MEMORY ;
 int PCI_LATENCY_TIMER ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;

__attribute__((used)) static void hpt3x3_init_chipset(struct pci_dev *dev)
{
 u16 cmd;

 pci_write_config_word(dev, 0x80, 0x00);

 pci_read_config_word(dev, PCI_COMMAND, &cmd);
 if (cmd & PCI_COMMAND_MEMORY)
  pci_write_config_byte(dev, PCI_LATENCY_TIMER, 0xF0);
 else
  pci_write_config_byte(dev, PCI_LATENCY_TIMER, 0x20);
}
