
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int scratch_page_dma; struct page* scratch_page; } ;
struct drm_i915_private {TYPE_1__ gtt; } ;
struct drm_device {int pdev; struct drm_i915_private* dev_private; } ;
typedef int dma_addr_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_DMA32 ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int __GFP_ZERO ;
 struct page* alloc_page (int) ;
 int get_page (struct page*) ;
 int page_to_phys (struct page*) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_page (int ,struct page*,int ,int ,int ) ;
 int set_pages_uc (struct page*,int) ;

__attribute__((used)) static int setup_scratch_page(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct page *page;
 dma_addr_t dma_addr;

 page = alloc_page(GFP_KERNEL | GFP_DMA32 | __GFP_ZERO);
 if (page == ((void*)0))
  return -ENOMEM;
 get_page(page);
 set_pages_uc(page, 1);







 dma_addr = page_to_phys(page);

 dev_priv->gtt.scratch_page = page;
 dev_priv->gtt.scratch_page_dma = dma_addr;

 return 0;
}
