
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct nouveau_drm {int device; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_6__ {int persistent_swap_storage; TYPE_1__ mem; } ;
struct nouveau_bo {int valid_domains; TYPE_4__* gem; TYPE_2__ bo; } ;
struct drm_device {int dummy; } ;
struct TYPE_8__ {struct nouveau_bo* driver_private; int filp; } ;
struct TYPE_7__ {scalar_t__ card_type; } ;


 int ENOMEM ;
 int NOUVEAU_GEM_DOMAIN_CPU ;
 int NOUVEAU_GEM_DOMAIN_GART ;
 int NOUVEAU_GEM_DOMAIN_VRAM ;
 scalar_t__ NV_50 ;
 int TTM_PL_FLAG_SYSTEM ;
 int TTM_PL_FLAG_TT ;
 int TTM_PL_FLAG_VRAM ;
 TYPE_4__* drm_gem_object_alloc (struct drm_device*,int ) ;
 int nouveau_bo_new (struct drm_device*,int,int,int ,int,int,int *,struct nouveau_bo**) ;
 int nouveau_bo_ref (int *,struct nouveau_bo**) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_3__* nv_device (int ) ;

int
nouveau_gem_new(struct drm_device *dev, int size, int align, uint32_t domain,
  uint32_t tile_mode, uint32_t tile_flags,
  struct nouveau_bo **pnvbo)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_bo *nvbo;
 u32 flags = 0;
 int ret;

 if (domain & NOUVEAU_GEM_DOMAIN_VRAM)
  flags |= TTM_PL_FLAG_VRAM;
 if (domain & NOUVEAU_GEM_DOMAIN_GART)
  flags |= TTM_PL_FLAG_TT;
 if (!flags || domain & NOUVEAU_GEM_DOMAIN_CPU)
  flags |= TTM_PL_FLAG_SYSTEM;

 ret = nouveau_bo_new(dev, size, align, flags, tile_mode,
        tile_flags, ((void*)0), pnvbo);
 if (ret)
  return ret;
 nvbo = *pnvbo;





 nvbo->valid_domains = NOUVEAU_GEM_DOMAIN_VRAM |
         NOUVEAU_GEM_DOMAIN_GART;
 if (nv_device(drm->device)->card_type >= NV_50)
  nvbo->valid_domains &= domain;

 nvbo->gem = drm_gem_object_alloc(dev, nvbo->bo.mem.size);
 if (!nvbo->gem) {
  nouveau_bo_ref(((void*)0), pnvbo);
  return -ENOMEM;
 }

 nvbo->bo.persistent_swap_storage = nvbo->gem->filp;
 nvbo->gem->driver_private = nvbo;
 return 0;
}
