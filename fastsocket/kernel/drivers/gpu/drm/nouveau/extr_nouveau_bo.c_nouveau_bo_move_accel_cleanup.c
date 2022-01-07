
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_reg {int dummy; } ;
struct nouveau_fence {int dummy; } ;
struct nouveau_channel {int dummy; } ;
struct nouveau_bo {int bo; } ;


 int nouveau_fence_new (struct nouveau_channel*,int,struct nouveau_fence**) ;
 int nouveau_fence_unref (struct nouveau_fence**) ;
 int ttm_bo_move_accel_cleanup (int *,struct nouveau_fence*,int,int,struct ttm_mem_reg*) ;

__attribute__((used)) static int
nouveau_bo_move_accel_cleanup(struct nouveau_channel *chan,
         struct nouveau_bo *nvbo, bool evict,
         bool no_wait_gpu, struct ttm_mem_reg *new_mem)
{
 struct nouveau_fence *fence = ((void*)0);
 int ret;

 ret = nouveau_fence_new(chan, 0, &fence);
 if (ret)
  return ret;

 ret = ttm_bo_move_accel_cleanup(&nvbo->bo, fence, evict,
     no_wait_gpu, new_mem);
 nouveau_fence_unref(&fence);
 return ret;
}
