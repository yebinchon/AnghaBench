
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scratch_page; int scratch_page_dma; } ;
struct drm_i915_private {TYPE_1__ gtt; } ;
struct drm_device {int pdev; struct drm_i915_private* dev_private; } ;


 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int __free_page (int ) ;
 int pci_unmap_page (int ,int ,int ,int ) ;
 int put_page (int ) ;
 int set_pages_wb (int ,int) ;

__attribute__((used)) static void teardown_scratch_page(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 set_pages_wb(dev_priv->gtt.scratch_page, 1);
 pci_unmap_page(dev->pdev, dev_priv->gtt.scratch_page_dma,
         PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
 put_page(dev_priv->gtt.scratch_page);
 __free_page(dev_priv->gtt.scratch_page);
}
