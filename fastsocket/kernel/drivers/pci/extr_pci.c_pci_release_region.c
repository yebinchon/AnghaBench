
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devres {int region_mask; } ;
struct pci_dev {int dummy; } ;


 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 struct pci_devres* find_pci_dr (struct pci_dev*) ;
 int pci_resource_flags (struct pci_dev*,int) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int release_mem_region (int ,scalar_t__) ;
 int release_region (int ,scalar_t__) ;

void pci_release_region(struct pci_dev *pdev, int bar)
{
 struct pci_devres *dr;

 if (pci_resource_len(pdev, bar) == 0)
  return;
 if (pci_resource_flags(pdev, bar) & IORESOURCE_IO)
  release_region(pci_resource_start(pdev, bar),
    pci_resource_len(pdev, bar));
 else if (pci_resource_flags(pdev, bar) & IORESOURCE_MEM)
  release_mem_region(pci_resource_start(pdev, bar),
    pci_resource_len(pdev, bar));

 dr = find_pci_dr(pdev);
 if (dr)
  dr->region_mask &= ~(1 << bar);
}
