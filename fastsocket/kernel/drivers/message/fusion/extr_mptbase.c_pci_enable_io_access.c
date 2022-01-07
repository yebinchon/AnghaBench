
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_COMMAND ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static void
pci_enable_io_access(struct pci_dev *pdev)
{
 u16 command_reg;

 pci_read_config_word(pdev, PCI_COMMAND, &command_reg);
 command_reg |= 1;
 pci_write_config_word(pdev, PCI_COMMAND, command_reg);
}
