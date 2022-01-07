
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pdev; } ;
typedef TYPE_1__ hfc4s8s_hw ;


 int PCI_COMMAND ;
 int PCI_ENA_MEMIO ;
 int PCI_ENA_REGIO ;
 int pci_write_config_word (int ,int ,int ) ;

__attribute__((used)) static void
enable_pci_ports(hfc4s8s_hw * hw)
{



 pci_write_config_word(hw->pdev, PCI_COMMAND, PCI_ENA_REGIO);

}
