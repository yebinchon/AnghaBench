
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int mem_type; } ;
struct TYPE_8__ {TYPE_2__* bdev; scalar_t__ sync_obj; TYPE_1__ mem; } ;
struct radeon_bo {TYPE_3__ tbo; } ;
struct TYPE_7__ {int fence_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ttm_bo_reserve (TYPE_3__*,int,int,int,int ) ;
 int ttm_bo_unreserve (TYPE_3__*) ;
 int ttm_bo_wait (TYPE_3__*,int,int,int) ;
 scalar_t__ unlikely (int) ;

int radeon_bo_wait(struct radeon_bo *bo, u32 *mem_type, bool no_wait)
{
 int r;

 r = ttm_bo_reserve(&bo->tbo, 1, no_wait, 0, 0);
 if (unlikely(r != 0))
  return r;
 spin_lock(&bo->tbo.bdev->fence_lock);
 if (mem_type)
  *mem_type = bo->tbo.mem.mem_type;
 if (bo->tbo.sync_obj)
  r = ttm_bo_wait(&bo->tbo, 1, 1, no_wait);
 spin_unlock(&bo->tbo.bdev->fence_lock);
 ttm_bo_unreserve(&bo->tbo);
 return r;
}
