
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_tt {int page_flags; scalar_t__ state; unsigned int num_pages; int * pages; int bdev; scalar_t__ sg; } ;
struct TYPE_2__ {scalar_t__* dma_address; } ;
struct radeon_ttm_tt {TYPE_1__ ttm; } ;
struct radeon_device {int flags; int pdev; int dev; } ;


 int EFAULT ;
 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int RADEON_IS_AGP ;
 int TTM_PAGE_FLAG_SG ;
 int drm_prime_sg_to_page_addr_arrays (scalar_t__,int *,scalar_t__*,unsigned int) ;
 scalar_t__ pci_dma_mapping_error (int ,scalar_t__) ;
 scalar_t__ pci_map_page (int ,int ,int ,int ,int ) ;
 int pci_unmap_page (int ,scalar_t__,int ,int ) ;
 struct radeon_device* radeon_get_rdev (int ) ;
 scalar_t__ swiotlb_nr_tbl () ;
 scalar_t__ tt_unbound ;
 scalar_t__ tt_unpopulated ;
 int ttm_agp_tt_populate (struct ttm_tt*) ;
 int ttm_dma_populate (TYPE_1__*,int ) ;
 int ttm_pool_populate (struct ttm_tt*) ;
 int ttm_pool_unpopulate (struct ttm_tt*) ;

__attribute__((used)) static int radeon_ttm_tt_populate(struct ttm_tt *ttm)
{
 struct radeon_device *rdev;
 struct radeon_ttm_tt *gtt = (void *)ttm;
 unsigned i;
 int r;
 bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);

 if (ttm->state != tt_unpopulated)
  return 0;

 if (slave && ttm->sg) {
  drm_prime_sg_to_page_addr_arrays(ttm->sg, ttm->pages,
       gtt->ttm.dma_address, ttm->num_pages);
  ttm->state = tt_unbound;
  return 0;
 }

 rdev = radeon_get_rdev(ttm->bdev);
 r = ttm_pool_populate(ttm);
 if (r) {
  return r;
 }

 for (i = 0; i < ttm->num_pages; i++) {
  gtt->ttm.dma_address[i] = pci_map_page(rdev->pdev, ttm->pages[i],
             0, PAGE_SIZE,
             PCI_DMA_BIDIRECTIONAL);
  if (pci_dma_mapping_error(rdev->pdev, gtt->ttm.dma_address[i])) {
   while (--i) {
    pci_unmap_page(rdev->pdev, gtt->ttm.dma_address[i],
            PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
    gtt->ttm.dma_address[i] = 0;
   }
   ttm_pool_unpopulate(ttm);
   return -EFAULT;
  }
 }
 return 0;
}
