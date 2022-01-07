
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_vma {scalar_t__ refcount; } ;
struct TYPE_2__ {int vm; } ;
struct nouveau_cli {TYPE_1__ base; } ;
struct nouveau_bo {int bo; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;


 int kfree (struct nouveau_vma*) ;
 int nouveau_bo_vma_del (struct nouveau_bo*,struct nouveau_vma*) ;
 struct nouveau_vma* nouveau_bo_vma_find (struct nouveau_bo*,int ) ;
 struct nouveau_cli* nouveau_cli (struct drm_file*) ;
 struct nouveau_bo* nouveau_gem_object (struct drm_gem_object*) ;
 int ttm_bo_reserve (int *,int,int,int,int ) ;
 int ttm_bo_unreserve (int *) ;

void
nouveau_gem_object_close(struct drm_gem_object *gem, struct drm_file *file_priv)
{
 struct nouveau_cli *cli = nouveau_cli(file_priv);
 struct nouveau_bo *nvbo = nouveau_gem_object(gem);
 struct nouveau_vma *vma;
 int ret;

 if (!cli->base.vm)
  return;

 ret = ttm_bo_reserve(&nvbo->bo, 0, 0, 0, 0);
 if (ret)
  return;

 vma = nouveau_bo_vma_find(nvbo, cli->base.vm);
 if (vma) {
  if (--vma->refcount == 0) {
   nouveau_bo_vma_del(nvbo, vma);
   kfree(vma);
  }
 }
 ttm_bo_unreserve(&nvbo->bo);
}
