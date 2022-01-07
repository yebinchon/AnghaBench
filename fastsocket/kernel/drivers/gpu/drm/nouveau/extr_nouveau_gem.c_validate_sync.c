
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_fence {int dummy; } ;
struct nouveau_channel {int dummy; } ;
struct TYPE_4__ {TYPE_1__* bdev; scalar_t__ sync_obj; } ;
struct nouveau_bo {TYPE_2__ bo; } ;
struct TYPE_3__ {int fence_lock; } ;


 struct nouveau_fence* nouveau_fence_ref (scalar_t__) ;
 int nouveau_fence_sync (struct nouveau_fence*,struct nouveau_channel*) ;
 int nouveau_fence_unref (struct nouveau_fence**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
validate_sync(struct nouveau_channel *chan, struct nouveau_bo *nvbo)
{
 struct nouveau_fence *fence = ((void*)0);
 int ret = 0;

 spin_lock(&nvbo->bo.bdev->fence_lock);
 if (nvbo->bo.sync_obj)
  fence = nouveau_fence_ref(nvbo->bo.sync_obj);
 spin_unlock(&nvbo->bo.bdev->fence_lock);

 if (fence) {
  ret = nouveau_fence_sync(fence, chan);
  nouveau_fence_unref(&fence);
 }

 return ret;
}
