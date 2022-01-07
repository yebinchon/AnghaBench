
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_bus {scalar_t__ hosttype; int host_pci; } ;


 scalar_t__ BCMA_HOSTTYPE_PCI ;
 int BCMA_PCI_BAR0_WIN ;
 int pci_write_config_dword (int ,int ,int ) ;

__attribute__((used)) static void bcma_scan_switch_core(struct bcma_bus *bus, u32 addr)
{
 if (bus->hosttype == BCMA_HOSTTYPE_PCI)
  pci_write_config_dword(bus->host_pci, BCMA_PCI_BAR0_WIN,
           addr);
}
