
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pcie_aer_disable ;

void pci_no_aer(void)
{
 pcie_aer_disable = 1;
}
