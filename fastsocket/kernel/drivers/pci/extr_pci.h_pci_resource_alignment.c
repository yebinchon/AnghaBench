
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct pci_dev {struct resource* resource; } ;


 int PCI_IOV_RESOURCES ;
 int PCI_IOV_RESOURCE_END ;
 int pci_sriov_resource_alignment (struct pci_dev*,int) ;
 int resource_alignment (struct resource*) ;

__attribute__((used)) static inline int pci_resource_alignment(struct pci_dev *dev,
      struct resource *res)
{






 return resource_alignment(res);
}
