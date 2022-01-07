
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_bus {int self; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int * iommu_table; } ;


 TYPE_1__* PCI_DN (struct device_node*) ;
 int iommu_table_iobmap ;
 int iommu_table_iobmap_inited ;
 int iommu_table_iobmap_setup () ;
 struct device_node* pci_bus_to_OF_node (struct pci_bus*) ;
 int pr_debug (char*,struct pci_bus*,int ) ;

__attribute__((used)) static void pci_dma_bus_setup_pasemi(struct pci_bus *bus)
{
 struct device_node *dn;

 pr_debug("pci_dma_bus_setup, bus %p, bus->self %p\n", bus, bus->self);

 if (!iommu_table_iobmap_inited) {
  iommu_table_iobmap_inited = 1;
  iommu_table_iobmap_setup();
 }

 dn = pci_bus_to_OF_node(bus);

 if (dn)
  PCI_DN(dn)->iommu_table = &iommu_table_iobmap;

}
