
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int flags; int end; int start; } ;
struct pci_pbm_info {struct resource mem_space; struct resource io_space; } ;
struct pci_dev {TYPE_1__* bus; } ;
struct pci_bus_region {int end; int start; } ;
struct TYPE_2__ {struct pci_pbm_info* sysdata; } ;


 int IORESOURCE_IO ;
 int pci_resource_adjust (struct resource*,struct resource*) ;

void pcibios_bus_to_resource(struct pci_dev *pdev, struct resource *res,
        struct pci_bus_region *region)
{
 struct pci_pbm_info *pbm = pdev->bus->sysdata;
 struct resource *root;

 res->start = region->start;
 res->end = region->end;

 if (res->flags & IORESOURCE_IO)
  root = &pbm->io_space;
 else
  root = &pbm->mem_space;

 pci_resource_adjust(res, root);
}
