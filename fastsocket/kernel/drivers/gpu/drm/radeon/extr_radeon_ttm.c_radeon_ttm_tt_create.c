
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct ttm_tt {int * func; } ;
struct ttm_bo_device {int dummy; } ;
struct TYPE_6__ {struct ttm_tt ttm; } ;
struct radeon_ttm_tt {TYPE_3__ ttm; struct radeon_device* rdev; } ;
struct radeon_device {int flags; TYPE_2__* ddev; } ;
struct page {int dummy; } ;
struct TYPE_5__ {TYPE_1__* agp; } ;
struct TYPE_4__ {int bridge; } ;


 int GFP_KERNEL ;
 int RADEON_IS_AGP ;
 int kfree (struct radeon_ttm_tt*) ;
 struct radeon_ttm_tt* kzalloc (int,int ) ;
 int radeon_backend_func ;
 struct radeon_device* radeon_get_rdev (struct ttm_bo_device*) ;
 struct ttm_tt* ttm_agp_tt_create (struct ttm_bo_device*,int ,unsigned long,int ,struct page*) ;
 scalar_t__ ttm_dma_tt_init (TYPE_3__*,struct ttm_bo_device*,unsigned long,int ,struct page*) ;

__attribute__((used)) static struct ttm_tt *radeon_ttm_tt_create(struct ttm_bo_device *bdev,
        unsigned long size, uint32_t page_flags,
        struct page *dummy_read_page)
{
 struct radeon_device *rdev;
 struct radeon_ttm_tt *gtt;

 rdev = radeon_get_rdev(bdev);







 gtt = kzalloc(sizeof(struct radeon_ttm_tt), GFP_KERNEL);
 if (gtt == ((void*)0)) {
  return ((void*)0);
 }
 gtt->ttm.ttm.func = &radeon_backend_func;
 gtt->rdev = rdev;
 if (ttm_dma_tt_init(&gtt->ttm, bdev, size, page_flags, dummy_read_page)) {
  kfree(gtt);
  return ((void*)0);
 }
 return &gtt->ttm.ttm;
}
