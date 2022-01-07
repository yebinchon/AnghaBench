
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ mem_type; scalar_t__ start; scalar_t__ num_pages; } ;
struct ttm_buffer_object {TYPE_1__ mem; int bdev; } ;
struct nouveau_drm {int device; } ;
struct nouveau_device {scalar_t__ card_type; int pdev; } ;
struct TYPE_4__ {scalar_t__ lpfn; scalar_t__ fpfn; } ;
struct nouveau_bo {TYPE_2__ placement; } ;


 scalar_t__ NV_50 ;
 scalar_t__ PAGE_SHIFT ;
 int TTM_PL_FLAG_VRAM ;
 scalar_t__ TTM_PL_VRAM ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 struct nouveau_bo* nouveau_bo (struct ttm_buffer_object*) ;
 int nouveau_bo_placement_set (struct nouveau_bo*,int ,int ) ;
 int nouveau_bo_tile_layout (struct nouveau_bo*) ;
 int nouveau_bo_validate (struct nouveau_bo*,int,int) ;
 struct nouveau_device* nv_device (int ) ;
 scalar_t__ pci_resource_len (int ,int) ;

__attribute__((used)) static int
nouveau_ttm_fault_reserve_notify(struct ttm_buffer_object *bo)
{
 struct nouveau_drm *drm = nouveau_bdev(bo->bdev);
 struct nouveau_bo *nvbo = nouveau_bo(bo);
 struct nouveau_device *device = nv_device(drm->device);
 u32 mappable = pci_resource_len(device->pdev, 1) >> PAGE_SHIFT;




 if (bo->mem.mem_type != TTM_PL_VRAM) {
  if (nv_device(drm->device)->card_type < NV_50 ||
      !nouveau_bo_tile_layout(nvbo))
   return 0;
 }


 if (bo->mem.start + bo->mem.num_pages < mappable)
  return 0;


 nvbo->placement.fpfn = 0;
 nvbo->placement.lpfn = mappable;
 nouveau_bo_placement_set(nvbo, TTM_PL_FLAG_VRAM, 0);
 return nouveau_bo_validate(nvbo, 0, 0);
}
