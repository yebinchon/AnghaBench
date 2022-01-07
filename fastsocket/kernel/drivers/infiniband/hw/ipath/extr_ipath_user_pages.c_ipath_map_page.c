
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct page {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ pci_map_page (struct pci_dev*,struct page*,unsigned long,size_t,int) ;
 int pci_unmap_page (struct pci_dev*,scalar_t__,size_t,int) ;

dma_addr_t ipath_map_page(struct pci_dev *hwdev, struct page *page,
 unsigned long offset, size_t size, int direction)
{
 dma_addr_t phys;

 phys = pci_map_page(hwdev, page, offset, size, direction);

 if (phys == 0) {
  pci_unmap_page(hwdev, phys, size, direction);
  phys = pci_map_page(hwdev, page, offset, size, direction);




 }

 return phys;
}
