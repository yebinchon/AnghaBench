
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;


 int FW_FEATURE_LPAR ;
 int PCI_PROBE_DEVTREE ;
 int PCI_PROBE_NORMAL ;
 scalar_t__ firmware_has_feature (int ) ;

__attribute__((used)) static int pSeries_pci_probe_mode(struct pci_bus *bus)
{
 if (firmware_has_feature(FW_FEATURE_LPAR))
  return PCI_PROBE_DEVTREE;
 return PCI_PROBE_NORMAL;
}
