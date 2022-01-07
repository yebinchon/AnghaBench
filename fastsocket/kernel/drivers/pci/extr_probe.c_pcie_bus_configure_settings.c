
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_bus {int self; } ;


 scalar_t__ PCIE_BUS_PEER2PEER ;
 scalar_t__ PCIE_BUS_SAFE ;
 scalar_t__ PCIE_BUS_TUNE_OFF ;
 int pci_is_pcie (int ) ;
 int pci_walk_bus (struct pci_bus*,int (*) (int ,scalar_t__*),scalar_t__*) ;
 scalar_t__ pcie_bus_config ;
 int pcie_bus_configure_set (int ,scalar_t__*) ;
 int pcie_find_smpss (int ,scalar_t__*) ;

void pcie_bus_configure_settings(struct pci_bus *bus, u8 mpss)
{
 u8 smpss;

 if (!pci_is_pcie(bus->self))
  return;

 if (pcie_bus_config == PCIE_BUS_TUNE_OFF)
  return;





 if (pcie_bus_config == PCIE_BUS_PEER2PEER)
  smpss = 0;

 if (pcie_bus_config == PCIE_BUS_SAFE) {
  smpss = mpss;

  pcie_find_smpss(bus->self, &smpss);
  pci_walk_bus(bus, pcie_find_smpss, &smpss);
 }

 pcie_bus_configure_set(bus->self, &smpss);
 pci_walk_bus(bus, pcie_bus_configure_set, &smpss);
}
