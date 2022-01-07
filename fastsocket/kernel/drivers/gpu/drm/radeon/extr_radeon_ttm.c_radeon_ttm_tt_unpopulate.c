
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_tt {int page_flags; unsigned int num_pages; int bdev; } ;
struct TYPE_2__ {scalar_t__* dma_address; } ;
struct radeon_ttm_tt {TYPE_1__ ttm; } ;
struct radeon_device {int flags; int pdev; int dev; } ;


 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int RADEON_IS_AGP ;
 int TTM_PAGE_FLAG_SG ;
 int pci_unmap_page (int ,scalar_t__,int ,int ) ;
 struct radeon_device* radeon_get_rdev (int ) ;
 scalar_t__ swiotlb_nr_tbl () ;
 int ttm_agp_tt_unpopulate (struct ttm_tt*) ;
 int ttm_dma_unpopulate (TYPE_1__*,int ) ;
 int ttm_pool_unpopulate (struct ttm_tt*) ;

__attribute__((used)) static void radeon_ttm_tt_unpopulate(struct ttm_tt *ttm)
{
 struct radeon_device *rdev;
 struct radeon_ttm_tt *gtt = (void *)ttm;
 unsigned i;
 bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);

 if (slave)
  return;

 rdev = radeon_get_rdev(ttm->bdev);
 for (i = 0; i < ttm->num_pages; i++) {
  if (gtt->ttm.dma_address[i]) {
   pci_unmap_page(rdev->pdev, gtt->ttm.dma_address[i],
           PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
  }
 }

 ttm_pool_unpopulate(ttm);
}
