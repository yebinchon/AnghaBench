
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int regions; TYPE_1__* region; } ;
struct nouveau_fb {TYPE_2__ tile; } ;
struct nouveau_drm_tile {int dummy; } ;
struct nouveau_drm {int device; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ pitch; } ;


 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 struct nouveau_fb* nouveau_fb (int ) ;
 struct nouveau_drm_tile* nv10_bo_get_tile_region (struct drm_device*,int) ;
 int nv10_bo_put_tile_region (struct drm_device*,struct nouveau_drm_tile*,int *) ;
 int nv10_bo_update_tile_region (struct drm_device*,struct nouveau_drm_tile*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static struct nouveau_drm_tile *
nv10_bo_set_tiling(struct drm_device *dev, u32 addr,
     u32 size, u32 pitch, u32 flags)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_fb *pfb = nouveau_fb(drm->device);
 struct nouveau_drm_tile *tile, *found = ((void*)0);
 int i;

 for (i = 0; i < pfb->tile.regions; i++) {
  tile = nv10_bo_get_tile_region(dev, i);

  if (pitch && !found) {
   found = tile;
   continue;

  } else if (tile && pfb->tile.region[i].pitch) {

   nv10_bo_update_tile_region(dev, tile, 0, 0, 0, 0);
  }

  nv10_bo_put_tile_region(dev, tile, ((void*)0));
 }

 if (found)
  nv10_bo_update_tile_region(dev, found, addr, size,
         pitch, flags);
 return found;
}
