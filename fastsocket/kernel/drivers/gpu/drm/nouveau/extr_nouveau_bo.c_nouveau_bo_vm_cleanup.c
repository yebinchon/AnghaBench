
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int sync_obj; int bdev; } ;
struct nouveau_drm_tile {int dummy; } ;
struct nouveau_drm {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 struct nouveau_drm* nouveau_bdev (int ) ;
 int nv10_bo_put_tile_region (struct drm_device*,struct nouveau_drm_tile*,int ) ;

__attribute__((used)) static void
nouveau_bo_vm_cleanup(struct ttm_buffer_object *bo,
        struct nouveau_drm_tile *new_tile,
        struct nouveau_drm_tile **old_tile)
{
 struct nouveau_drm *drm = nouveau_bdev(bo->bdev);
 struct drm_device *dev = drm->dev;

 nv10_bo_put_tile_region(dev, *old_tile, bo->sync_obj);
 *old_tile = new_tile;
}
