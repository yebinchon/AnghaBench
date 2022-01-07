
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct pci_dev {int dummy; } ;


 struct resource* find_oprom (struct pci_dev*) ;
 void* ioremap (int ,int ) ;
 int resource_size (struct resource*) ;

void *pci_map_biosrom(struct pci_dev *pdev)
{
 struct resource *oprom = find_oprom(pdev);

 if (!oprom)
  return ((void*)0);

 return ioremap(oprom->start, resource_size(oprom));
}
