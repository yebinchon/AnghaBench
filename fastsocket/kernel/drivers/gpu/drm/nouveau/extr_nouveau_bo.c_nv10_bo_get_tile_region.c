
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm_tile {int used; int fence; } ;
struct TYPE_2__ {int lock; struct nouveau_drm_tile* reg; } ;
struct nouveau_drm {TYPE_1__ tile; } ;
struct drm_device {int dummy; } ;


 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 scalar_t__ nouveau_fence_done (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nouveau_drm_tile *
nv10_bo_get_tile_region(struct drm_device *dev, int i)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_drm_tile *tile = &drm->tile.reg[i];

 spin_lock(&drm->tile.lock);

 if (!tile->used &&
     (!tile->fence || nouveau_fence_done(tile->fence)))
  tile->used = 1;
 else
  tile = ((void*)0);

 spin_unlock(&drm->tile.lock);
 return tile;
}
