
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_tt {int num_pages; int pages; } ;
struct ttm_mem_reg {int start; } ;
struct TYPE_2__ {int dma_address; } ;
struct radeon_ttm_tt {unsigned long offset; TYPE_1__ ttm; int rdev; } ;


 int DRM_ERROR (char*,int ,unsigned int) ;
 int PAGE_SHIFT ;
 int WARN (int,char*,int ,struct ttm_mem_reg*,struct ttm_tt*) ;
 int radeon_gart_bind (int ,unsigned long,int ,int ,int ) ;

__attribute__((used)) static int radeon_ttm_backend_bind(struct ttm_tt *ttm,
       struct ttm_mem_reg *bo_mem)
{
 struct radeon_ttm_tt *gtt = (void*)ttm;
 int r;

 gtt->offset = (unsigned long)(bo_mem->start << PAGE_SHIFT);
 if (!ttm->num_pages) {
  WARN(1, "nothing to bind %lu pages for mreg %p back %p!\n",
       ttm->num_pages, bo_mem, ttm);
 }
 r = radeon_gart_bind(gtt->rdev, gtt->offset,
        ttm->num_pages, ttm->pages, gtt->ttm.dma_address);
 if (r) {
  DRM_ERROR("failed to bind %lu pages at 0x%08X\n",
     ttm->num_pages, (unsigned)gtt->offset);
  return r;
 }
 return 0;
}
