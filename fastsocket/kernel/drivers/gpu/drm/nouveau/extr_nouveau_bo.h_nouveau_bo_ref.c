
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int dummy; } ;
struct nouveau_bo {struct ttm_buffer_object bo; } ;


 int EINVAL ;
 struct nouveau_bo* nouveau_bo (int ) ;
 int ttm_bo_reference (struct ttm_buffer_object*) ;
 int ttm_bo_unref (struct ttm_buffer_object**) ;

__attribute__((used)) static inline int
nouveau_bo_ref(struct nouveau_bo *ref, struct nouveau_bo **pnvbo)
{
 struct nouveau_bo *prev;

 if (!pnvbo)
  return -EINVAL;
 prev = *pnvbo;

 *pnvbo = ref ? nouveau_bo(ttm_bo_reference(&ref->bo)) : ((void*)0);
 if (prev) {
  struct ttm_buffer_object *bo = &prev->bo;

  ttm_bo_unref(&bo);
 }

 return 0;
}
