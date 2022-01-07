
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* virtual; } ;
struct TYPE_3__ {int num_pages; } ;
struct nouveau_bo {TYPE_2__ dma_buf_vmap; TYPE_1__ bo; } ;
struct drm_gem_object {int dummy; } ;


 void* ERR_PTR (int) ;
 struct nouveau_bo* nouveau_gem_object (struct drm_gem_object*) ;
 int ttm_bo_kmap (TYPE_1__*,int ,int ,TYPE_2__*) ;

void *nouveau_gem_prime_vmap(struct drm_gem_object *obj)
{
 struct nouveau_bo *nvbo = nouveau_gem_object(obj);
 int ret;

 ret = ttm_bo_kmap(&nvbo->bo, 0, nvbo->bo.num_pages,
     &nvbo->dma_buf_vmap);
 if (ret)
  return ERR_PTR(ret);

 return nvbo->dma_buf_vmap.virtual;
}
