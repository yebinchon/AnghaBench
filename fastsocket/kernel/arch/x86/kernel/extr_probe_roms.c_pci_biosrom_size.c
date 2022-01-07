
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct pci_dev {int dummy; } ;


 struct resource* find_oprom (struct pci_dev*) ;
 size_t resource_size (struct resource*) ;

size_t pci_biosrom_size(struct pci_dev *pdev)
{
 struct resource *oprom = find_oprom(pdev);

 return oprom ? resource_size(oprom) : 0;
}
