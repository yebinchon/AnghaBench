
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * page; int addr; } ;
struct radeon_device {TYPE_1__ dummy_page; int pdev; } ;


 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int __free_page (int *) ;
 int pci_unmap_page (int ,int ,int ,int ) ;

void radeon_dummy_page_fini(struct radeon_device *rdev)
{
 if (rdev->dummy_page.page == ((void*)0))
  return;
 pci_unmap_page(rdev->pdev, rdev->dummy_page.addr,
   PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
 __free_page(rdev->dummy_page.page);
 rdev->dummy_page.page = ((void*)0);
}
