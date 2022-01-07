
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s2io_nic {int pdev; } ;


 int PCIX_COMMAND_REGISTER ;
 int PCI_COMMAND ;
 int PCI_COMMAND_PARITY ;
 int pci_read_config_word (int ,int ,int*) ;
 int pci_write_config_word (int ,int ,int) ;

__attribute__((used)) static void s2io_init_pci(struct s2io_nic *sp)
{
 u16 pci_cmd = 0, pcix_cmd = 0;


 pci_read_config_word(sp->pdev, PCIX_COMMAND_REGISTER,
        &(pcix_cmd));
 pci_write_config_word(sp->pdev, PCIX_COMMAND_REGISTER,
         (pcix_cmd | 1));
 pci_read_config_word(sp->pdev, PCIX_COMMAND_REGISTER,
        &(pcix_cmd));


 pci_read_config_word(sp->pdev, PCI_COMMAND, &pci_cmd);
 pci_write_config_word(sp->pdev, PCI_COMMAND,
         (pci_cmd | PCI_COMMAND_PARITY));
 pci_read_config_word(sp->pdev, PCI_COMMAND, &pci_cmd);
}
