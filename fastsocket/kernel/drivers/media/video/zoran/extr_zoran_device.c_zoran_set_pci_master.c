
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zoran {int pci_dev; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_MASTER ;
 int pci_read_config_word (int ,int ,int *) ;
 int pci_set_master (int ) ;
 int pci_write_config_word (int ,int ,int ) ;

void
zoran_set_pci_master (struct zoran *zr,
        int set_master)
{
 if (set_master) {
  pci_set_master(zr->pci_dev);
 } else {
  u16 command;

  pci_read_config_word(zr->pci_dev, PCI_COMMAND, &command);
  command &= ~PCI_COMMAND_MASTER;
  pci_write_config_word(zr->pci_dev, PCI_COMMAND, command);
 }
}
