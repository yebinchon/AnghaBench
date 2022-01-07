
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int bdev; } ;
struct nouveau_drm {struct drm_device* dev; } ;
struct nouveau_bo {int tile; int gem; } ;
struct drm_device {int dummy; } ;


 int DRM_ERROR (char*,struct ttm_buffer_object*) ;
 int kfree (struct nouveau_bo*) ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 struct nouveau_bo* nouveau_bo (struct ttm_buffer_object*) ;
 int nv10_bo_put_tile_region (struct drm_device*,int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void
nouveau_bo_del_ttm(struct ttm_buffer_object *bo)
{
 struct nouveau_drm *drm = nouveau_bdev(bo->bdev);
 struct drm_device *dev = drm->dev;
 struct nouveau_bo *nvbo = nouveau_bo(bo);

 if (unlikely(nvbo->gem))
  DRM_ERROR("bo %p still attached to GEM object\n", bo);
 nv10_bo_put_tile_region(dev, nvbo->tile, ((void*)0));
 kfree(nvbo);
}
