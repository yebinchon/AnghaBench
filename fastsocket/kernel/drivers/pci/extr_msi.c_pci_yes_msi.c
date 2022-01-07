
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pci_msi_enable ;

void pci_yes_msi(void)
{
 pci_msi_enable = 1;
}
