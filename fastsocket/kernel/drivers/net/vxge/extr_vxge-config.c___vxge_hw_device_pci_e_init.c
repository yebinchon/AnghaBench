
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct __vxge_hw_device {int pdev; } ;


 int PCI_COMMAND ;
 int pci_read_config_word (int ,int ,int*) ;
 int pci_save_state (int ) ;
 int pci_write_config_word (int ,int ,int) ;

void
__vxge_hw_device_pci_e_init(struct __vxge_hw_device *hldev)
{
 u16 cmd = 0;


 pci_read_config_word(hldev->pdev, PCI_COMMAND, &cmd);
 cmd |= 0x140;
 pci_write_config_word(hldev->pdev, PCI_COMMAND, cmd);

 pci_save_state(hldev->pdev);

 return;
}
