
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_vma {int refcount; } ;
struct TYPE_2__ {int vm; } ;
struct nouveau_cli {TYPE_1__ base; } ;
struct nouveau_bo {int bo; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct nouveau_vma*) ;
 struct nouveau_vma* kzalloc (int,int ) ;
 int nouveau_bo_vma_add (struct nouveau_bo*,int ,struct nouveau_vma*) ;
 struct nouveau_vma* nouveau_bo_vma_find (struct nouveau_bo*,int ) ;
 struct nouveau_cli* nouveau_cli (struct drm_file*) ;
 struct nouveau_bo* nouveau_gem_object (struct drm_gem_object*) ;
 int ttm_bo_reserve (int *,int,int,int,int ) ;
 int ttm_bo_unreserve (int *) ;

int
nouveau_gem_object_open(struct drm_gem_object *gem, struct drm_file *file_priv)
{
 struct nouveau_cli *cli = nouveau_cli(file_priv);
 struct nouveau_bo *nvbo = nouveau_gem_object(gem);
 struct nouveau_vma *vma;
 int ret;

 if (!cli->base.vm)
  return 0;

 ret = ttm_bo_reserve(&nvbo->bo, 0, 0, 0, 0);
 if (ret)
  return ret;

 vma = nouveau_bo_vma_find(nvbo, cli->base.vm);
 if (!vma) {
  vma = kzalloc(sizeof(*vma), GFP_KERNEL);
  if (!vma) {
   ret = -ENOMEM;
   goto out;
  }

  ret = nouveau_bo_vma_add(nvbo, cli->base.vm, vma);
  if (ret) {
   kfree(vma);
   goto out;
  }
 } else {
  vma->refcount++;
 }

out:
 ttm_bo_unreserve(&nvbo->bo);
 return ret;
}
