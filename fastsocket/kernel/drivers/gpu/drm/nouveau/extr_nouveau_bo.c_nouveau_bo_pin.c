
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int mem_type; int size; } ;
struct ttm_buffer_object {TYPE_2__ mem; int bdev; } ;
struct TYPE_3__ {int gart_available; int vram_available; } ;
struct nouveau_drm {TYPE_1__ gem; } ;
struct nouveau_bo {scalar_t__ pin_refcnt; struct ttm_buffer_object bo; } ;


 int EINVAL ;
 int NV_ERROR (struct nouveau_drm*,char*,struct ttm_buffer_object*,int,int) ;


 struct nouveau_drm* nouveau_bdev (int ) ;
 int nouveau_bo_placement_set (struct nouveau_bo*,int,int ) ;
 int nouveau_bo_validate (struct nouveau_bo*,int,int) ;
 int ttm_bo_reserve (struct ttm_buffer_object*,int,int,int,int ) ;
 int ttm_bo_unreserve (struct ttm_buffer_object*) ;

int
nouveau_bo_pin(struct nouveau_bo *nvbo, uint32_t memtype)
{
 struct nouveau_drm *drm = nouveau_bdev(nvbo->bo.bdev);
 struct ttm_buffer_object *bo = &nvbo->bo;
 int ret;

 ret = ttm_bo_reserve(bo, 0, 0, 0, 0);
 if (ret)
  goto out;

 if (nvbo->pin_refcnt && !(memtype & (1 << bo->mem.mem_type))) {
  NV_ERROR(drm, "bo %p pinned elsewhere: 0x%08x vs 0x%08x\n", bo,
    1 << bo->mem.mem_type, memtype);
  ret = -EINVAL;
  goto out;
 }

 if (nvbo->pin_refcnt++)
  goto out;

 nouveau_bo_placement_set(nvbo, memtype, 0);

 ret = nouveau_bo_validate(nvbo, 0, 0);
 if (ret == 0) {
  switch (bo->mem.mem_type) {
  case 128:
   drm->gem.vram_available -= bo->mem.size;
   break;
  case 129:
   drm->gem.gart_available -= bo->mem.size;
   break;
  default:
   break;
  }
 }
out:
 ttm_bo_unreserve(bo);
 return ret;
}
