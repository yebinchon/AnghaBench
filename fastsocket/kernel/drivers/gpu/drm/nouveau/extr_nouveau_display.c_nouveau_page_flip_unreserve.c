
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence {int dummy; } ;
struct nouveau_bo {int bo; } ;


 scalar_t__ likely (int) ;
 int nouveau_bo_fence (struct nouveau_bo*,struct nouveau_fence*) ;
 int nouveau_bo_unpin (struct nouveau_bo*) ;
 int ttm_bo_unreserve (int *) ;

__attribute__((used)) static void
nouveau_page_flip_unreserve(struct nouveau_bo *old_bo,
       struct nouveau_bo *new_bo,
       struct nouveau_fence *fence)
{
 nouveau_bo_fence(new_bo, fence);
 ttm_bo_unreserve(&new_bo->bo);

 if (likely(old_bo != new_bo)) {
  nouveau_bo_fence(old_bo, fence);
  ttm_bo_unreserve(&old_bo->bo);
 }

 nouveau_bo_unpin(old_bo);
}
