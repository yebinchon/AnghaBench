
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct sg_table {int dummy; } ;
struct TYPE_8__ {int mclk_lock; } ;
struct TYPE_9__ {int dev_mapping; } ;
struct TYPE_7__ {TYPE_3__ bdev; } ;
struct radeon_device {TYPE_2__ pm; TYPE_1__ mman; TYPE_5__* ddev; } ;
struct TYPE_11__ {int * driver_private; } ;
struct radeon_bo {int surface_reg; int placement; int tbo; int va; int list; TYPE_6__ gem_base; struct radeon_device* rdev; } ;
typedef enum ttm_bo_type { ____Placeholder_ttm_bo_type } ttm_bo_type ;
struct TYPE_10__ {int dev_mapping; } ;


 unsigned long ALIGN (unsigned long,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int down_read (int *) ;
 int drm_gem_object_init (TYPE_5__*,TYPE_6__*,unsigned long) ;
 int kfree (struct radeon_bo*) ;
 struct radeon_bo* kzalloc (int,int ) ;
 int radeon_ttm_bo_destroy ;
 int radeon_ttm_placement_from_domain (struct radeon_bo*,int ) ;
 unsigned long roundup (int,int ) ;
 int trace_radeon_bo_create (struct radeon_bo*) ;
 size_t ttm_bo_dma_acc_size (TYPE_3__*,unsigned long,int) ;
 int ttm_bo_init (TYPE_3__*,int *,unsigned long,int,int *,unsigned long,int,int *,size_t,struct sg_table*,int *) ;
 int ttm_bo_type_device ;
 int ttm_bo_type_kernel ;
 int ttm_bo_type_sg ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;

int radeon_bo_create(struct radeon_device *rdev,
       unsigned long size, int byte_align, bool kernel, u32 domain,
       struct sg_table *sg, struct radeon_bo **bo_ptr)
{
 struct radeon_bo *bo;
 enum ttm_bo_type type;
 unsigned long page_align = roundup(byte_align, PAGE_SIZE) >> PAGE_SHIFT;
 size_t acc_size;
 int r;

 size = ALIGN(size, PAGE_SIZE);

 rdev->mman.bdev.dev_mapping = rdev->ddev->dev_mapping;
 if (kernel) {
  type = ttm_bo_type_kernel;
 } else if (sg) {
  type = ttm_bo_type_sg;
 } else {
  type = ttm_bo_type_device;
 }
 *bo_ptr = ((void*)0);

 acc_size = ttm_bo_dma_acc_size(&rdev->mman.bdev, size,
           sizeof(struct radeon_bo));

 bo = kzalloc(sizeof(struct radeon_bo), GFP_KERNEL);
 if (bo == ((void*)0))
  return -ENOMEM;
 r = drm_gem_object_init(rdev->ddev, &bo->gem_base, size);
 if (unlikely(r)) {
  kfree(bo);
  return r;
 }
 bo->rdev = rdev;
 bo->gem_base.driver_private = ((void*)0);
 bo->surface_reg = -1;
 INIT_LIST_HEAD(&bo->list);
 INIT_LIST_HEAD(&bo->va);
 radeon_ttm_placement_from_domain(bo, domain);

 down_read(&rdev->pm.mclk_lock);
 r = ttm_bo_init(&rdev->mman.bdev, &bo->tbo, size, type,
   &bo->placement, page_align, !kernel, ((void*)0),
   acc_size, sg, &radeon_ttm_bo_destroy);
 up_read(&rdev->pm.mclk_lock);
 if (unlikely(r != 0)) {
  return r;
 }
 *bo_ptr = bo;

 trace_radeon_bo_create(bo);

 return 0;
}
