
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sg_table {int dummy; } ;
struct TYPE_3__ {int size; } ;
struct TYPE_4__ {TYPE_1__ mem; } ;
struct nouveau_bo {struct drm_gem_object* gem; TYPE_2__ bo; int valid_domains; } ;
struct drm_gem_object {struct nouveau_bo* driver_private; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 struct drm_gem_object* ERR_PTR (int) ;
 int NOUVEAU_GEM_DOMAIN_GART ;
 int TTM_PL_FLAG_TT ;
 struct drm_gem_object* drm_gem_object_alloc (struct drm_device*,int ) ;
 int nouveau_bo_new (struct drm_device*,size_t,int ,int ,int ,int ,struct sg_table*,struct nouveau_bo**) ;
 int nouveau_bo_ref (int *,struct nouveau_bo**) ;

struct drm_gem_object *nouveau_gem_prime_import_sg_table(struct drm_device *dev,
        size_t size,
        struct sg_table *sg)
{
 struct nouveau_bo *nvbo;
 u32 flags = 0;
 int ret;

 flags = TTM_PL_FLAG_TT;

 ret = nouveau_bo_new(dev, size, 0, flags, 0, 0,
        sg, &nvbo);
 if (ret)
  return ERR_PTR(ret);

 nvbo->valid_domains = NOUVEAU_GEM_DOMAIN_GART;
 nvbo->gem = drm_gem_object_alloc(dev, nvbo->bo.mem.size);
 if (!nvbo->gem) {
  nouveau_bo_ref(((void*)0), &nvbo);
  return ERR_PTR(-ENOMEM);
 }

 nvbo->gem->driver_private = nvbo;
 return nvbo->gem;
}
