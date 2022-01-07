
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_bo {int bo; } ;


 int TTM_PL_FLAG_VRAM ;
 scalar_t__ likely (int) ;
 int nouveau_bo_pin (struct nouveau_bo*,int ) ;
 int nouveau_bo_unpin (struct nouveau_bo*) ;
 int ttm_bo_reserve (int *,int,int,int,int ) ;
 int ttm_bo_unreserve (int *) ;

__attribute__((used)) static int
nouveau_page_flip_reserve(struct nouveau_bo *old_bo,
     struct nouveau_bo *new_bo)
{
 int ret;

 ret = nouveau_bo_pin(new_bo, TTM_PL_FLAG_VRAM);
 if (ret)
  return ret;

 ret = ttm_bo_reserve(&new_bo->bo, 0, 0, 0, 0);
 if (ret)
  goto fail;

 if (likely(old_bo != new_bo)) {
  ret = ttm_bo_reserve(&old_bo->bo, 0, 0, 0, 0);
  if (ret)
   goto fail_unreserve;
 }

 return 0;

fail_unreserve:
 ttm_bo_unreserve(&new_bo->bo);
fail:
 nouveau_bo_unpin(new_bo);
 return ret;
}
