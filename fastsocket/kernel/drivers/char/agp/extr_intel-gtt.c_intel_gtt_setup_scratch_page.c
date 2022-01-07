
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct page* scratch_page; int scratch_page_dma; int pcidev; scalar_t__ needs_dmar; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_DMA32 ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int __GFP_ZERO ;
 struct page* alloc_page (int) ;
 int get_page (struct page*) ;
 TYPE_1__ intel_private ;
 int page_to_phys (struct page*) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_page (int ,struct page*,int ,int ,int ) ;
 int set_pages_uc (struct page*,int) ;

__attribute__((used)) static int intel_gtt_setup_scratch_page(void)
{
 struct page *page;
 dma_addr_t dma_addr;

 page = alloc_page(GFP_KERNEL | GFP_DMA32 | __GFP_ZERO);
 if (page == ((void*)0))
  return -ENOMEM;
 get_page(page);
 set_pages_uc(page, 1);

 if (intel_private.needs_dmar) {
  dma_addr = pci_map_page(intel_private.pcidev, page, 0,
        PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
  if (pci_dma_mapping_error(intel_private.pcidev, dma_addr))
   return -EINVAL;

  intel_private.scratch_page_dma = dma_addr;
 } else
  intel_private.scratch_page_dma = page_to_phys(page);

 intel_private.scratch_page = page;

 return 0;
}
