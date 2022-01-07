
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_CACHE_LINE_SIZE ;
 int PCI_COMMAND ;
 unsigned short PCI_COMMAND_FAST_BACK ;
 unsigned short PCI_COMMAND_MASTER ;
 int PCI_LATENCY_TIMER ;
 int pci_read_config_byte (struct pci_dev*,int,unsigned char*) ;
 int pci_read_config_word (struct pci_dev*,int ,unsigned short*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_word (struct pci_dev*,int ,unsigned short) ;

__attribute__((used)) static void qube_raq_via_bmIDE_fixup(struct pci_dev *dev)
{
 unsigned short cfgword;
 unsigned char lt;


 pci_read_config_word(dev, PCI_COMMAND, &cfgword);
 cfgword |= (PCI_COMMAND_FAST_BACK | PCI_COMMAND_MASTER);
 pci_write_config_word(dev, PCI_COMMAND, cfgword);


 pci_write_config_byte(dev, 0x40, 0xb);


 pci_read_config_byte(dev, PCI_LATENCY_TIMER, &lt);
 if (lt < 64)
  pci_write_config_byte(dev, PCI_LATENCY_TIMER, 64);
 pci_write_config_byte(dev, PCI_CACHE_LINE_SIZE, 8);
}
