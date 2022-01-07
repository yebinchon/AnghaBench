
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_private {int pdev; } ;


 int PCI_D3hot ;
 int pci_enable_wake (int ,int ,int) ;
 int pci_set_power_state (int ,int ) ;

__attribute__((used)) static void cp_set_d3_state (struct cp_private *cp)
{
 pci_enable_wake (cp->pdev, 0, 1);
 pci_set_power_state (cp->pdev, PCI_D3hot);
}
