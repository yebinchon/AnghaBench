
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ttm_mem_reg {int start; scalar_t__ mem_type; int size; } ;
struct ttm_buffer_object {int bdev; } ;
struct nouveau_drm_tile {int dummy; } ;
struct nouveau_drm {int device; struct drm_device* dev; } ;
struct nouveau_bo {int tile_flags; int tile_mode; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;


 scalar_t__ NV_10 ;
 int PAGE_SHIFT ;
 scalar_t__ TTM_PL_VRAM ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 struct nouveau_bo* nouveau_bo (struct ttm_buffer_object*) ;
 struct nouveau_drm_tile* nv10_bo_set_tiling (struct drm_device*,int,int ,int ,int ) ;
 TYPE_1__* nv_device (int ) ;

__attribute__((used)) static int
nouveau_bo_vm_bind(struct ttm_buffer_object *bo, struct ttm_mem_reg *new_mem,
     struct nouveau_drm_tile **new_tile)
{
 struct nouveau_drm *drm = nouveau_bdev(bo->bdev);
 struct drm_device *dev = drm->dev;
 struct nouveau_bo *nvbo = nouveau_bo(bo);
 u64 offset = new_mem->start << PAGE_SHIFT;

 *new_tile = ((void*)0);
 if (new_mem->mem_type != TTM_PL_VRAM)
  return 0;

 if (nv_device(drm->device)->card_type >= NV_10) {
  *new_tile = nv10_bo_set_tiling(dev, offset, new_mem->size,
      nvbo->tile_mode,
      nvbo->tile_flags);
 }

 return 0;
}
