
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_fence {int dummy; } ;
struct TYPE_4__ {TYPE_1__* bdev; struct nouveau_fence* sync_obj; } ;
struct nouveau_bo {TYPE_2__ bo; } ;
struct TYPE_3__ {int fence_lock; } ;


 scalar_t__ likely (struct nouveau_fence*) ;
 int nouveau_fence_ref (struct nouveau_fence*) ;
 int nouveau_fence_unref (struct nouveau_fence**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
nouveau_bo_fence(struct nouveau_bo *nvbo, struct nouveau_fence *fence)
{
 struct nouveau_fence *old_fence = ((void*)0);

 if (likely(fence))
  nouveau_fence_ref(fence);

 spin_lock(&nvbo->bo.bdev->fence_lock);
 old_fence = nvbo->bo.sync_obj;
 nvbo->bo.sync_obj = fence;
 spin_unlock(&nvbo->bo.bdev->fence_lock);

 nouveau_fence_unref(&old_fence);
}
