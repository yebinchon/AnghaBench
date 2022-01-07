
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dma_mask; } ;
struct page {int dummy; } ;
typedef int dma_addr_t ;


 int BUG () ;
 int PCI_DMA_NONE ;
 scalar_t__ page_address (struct page*) ;
 int pci_dac_dma_supported (struct pci_dev*,int ) ;
 int pci_map_single_1 (struct pci_dev*,char*,size_t,int) ;

dma_addr_t
pci_map_page(struct pci_dev *pdev, struct page *page, unsigned long offset,
      size_t size, int dir)
{
 int dac_allowed;

 if (dir == PCI_DMA_NONE)
  BUG();

 dac_allowed = pdev ? pci_dac_dma_supported(pdev, pdev->dma_mask) : 0;
 return pci_map_single_1(pdev, (char *)page_address(page) + offset,
    size, dac_allowed);
}
