
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct st_hba {TYPE_1__* pdev; } ;
struct pci_bus {int self; } ;
struct TYPE_4__ {int * saved_config_space; struct pci_bus* bus; } ;


 int MU_HARD_RESET_WAIT ;
 int PCI_BRIDGE_CONTROL ;
 int PCI_BRIDGE_CTL_BUS_RESET ;
 int PCI_COMMAND ;
 int PCI_COMMAND_MASTER ;
 int msleep (int) ;
 int pci_read_config_byte (int ,int ,int *) ;
 int pci_read_config_dword (TYPE_1__*,int,int *) ;
 int pci_read_config_word (TYPE_1__*,int ,int*) ;
 int pci_write_config_byte (int ,int ,int ) ;
 int pci_write_config_dword (TYPE_1__*,int,int ) ;
 int ssleep (int) ;

__attribute__((used)) static void stex_hard_reset(struct st_hba *hba)
{
 struct pci_bus *bus;
 int i;
 u16 pci_cmd;
 u8 pci_bctl;

 for (i = 0; i < 16; i++)
  pci_read_config_dword(hba->pdev, i * 4,
   &hba->pdev->saved_config_space[i]);



 bus = hba->pdev->bus;
 pci_read_config_byte(bus->self, PCI_BRIDGE_CONTROL, &pci_bctl);
 pci_bctl |= PCI_BRIDGE_CTL_BUS_RESET;
 pci_write_config_byte(bus->self, PCI_BRIDGE_CONTROL, pci_bctl);





 msleep(100);
 pci_bctl &= ~PCI_BRIDGE_CTL_BUS_RESET;
 pci_write_config_byte(bus->self, PCI_BRIDGE_CONTROL, pci_bctl);

 for (i = 0; i < MU_HARD_RESET_WAIT; i++) {
  pci_read_config_word(hba->pdev, PCI_COMMAND, &pci_cmd);
  if (pci_cmd != 0xffff && (pci_cmd & PCI_COMMAND_MASTER))
   break;
  msleep(1);
 }

 ssleep(5);
 for (i = 0; i < 16; i++)
  pci_write_config_dword(hba->pdev, i * 4,
   hba->pdev->saved_config_space[i]);
}
