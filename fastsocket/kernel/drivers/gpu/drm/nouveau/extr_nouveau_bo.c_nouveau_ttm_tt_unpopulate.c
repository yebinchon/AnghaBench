
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_tt {int page_flags; unsigned int num_pages; int bdev; } ;
struct ttm_dma_tt {scalar_t__* dma_address; } ;
struct TYPE_2__ {scalar_t__ stat; } ;
struct nouveau_drm {TYPE_1__ agp; struct drm_device* dev; } ;
struct drm_device {int pdev; int dev; } ;


 scalar_t__ ENABLED ;
 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int TTM_PAGE_FLAG_SG ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 int pci_unmap_page (int ,scalar_t__,int ,int ) ;
 scalar_t__ swiotlb_nr_tbl () ;
 int ttm_agp_tt_unpopulate (struct ttm_tt*) ;
 int ttm_dma_unpopulate (void*,int ) ;
 int ttm_pool_unpopulate (struct ttm_tt*) ;

__attribute__((used)) static void
nouveau_ttm_tt_unpopulate(struct ttm_tt *ttm)
{
 struct ttm_dma_tt *ttm_dma = (void *)ttm;
 struct nouveau_drm *drm;
 struct drm_device *dev;
 unsigned i;
 bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);

 if (slave)
  return;

 drm = nouveau_bdev(ttm->bdev);
 dev = drm->dev;
 for (i = 0; i < ttm->num_pages; i++) {
  if (ttm_dma->dma_address[i]) {
   pci_unmap_page(dev->pdev, ttm_dma->dma_address[i],
           PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
  }
 }

 ttm_pool_unpopulate(ttm);
}
