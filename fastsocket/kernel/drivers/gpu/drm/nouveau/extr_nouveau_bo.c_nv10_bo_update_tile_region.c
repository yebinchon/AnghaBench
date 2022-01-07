
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nouveau_fb_tile {scalar_t__ pitch; } ;
struct TYPE_4__ {int (* prog ) (struct nouveau_fb*,int,struct nouveau_fb_tile*) ;int (* init ) (struct nouveau_fb*,int,int ,int ,int ,int ,struct nouveau_fb_tile*) ;int (* fini ) (struct nouveau_fb*,int,struct nouveau_fb_tile*) ;struct nouveau_fb_tile* region; } ;
struct nouveau_fb {TYPE_2__ tile; } ;
struct nouveau_engine {int (* tile_prog ) (struct nouveau_engine*,int) ;} ;
struct nouveau_drm_tile {int fence; } ;
struct TYPE_3__ {struct nouveau_drm_tile* reg; } ;
struct nouveau_drm {int device; TYPE_1__ tile; } ;
struct drm_device {int dummy; } ;


 int NVDEV_ENGINE_GR ;
 int NVDEV_ENGINE_MPEG ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 struct nouveau_engine* nouveau_engine (struct nouveau_fb*,int ) ;
 struct nouveau_fb* nouveau_fb (int ) ;
 int nouveau_fence_unref (int *) ;
 int stub1 (struct nouveau_fb*,int,struct nouveau_fb_tile*) ;
 int stub2 (struct nouveau_fb*,int,int ,int ,int ,int ,struct nouveau_fb_tile*) ;
 int stub3 (struct nouveau_fb*,int,struct nouveau_fb_tile*) ;
 int stub4 (struct nouveau_engine*,int) ;
 int stub5 (struct nouveau_engine*,int) ;

__attribute__((used)) static void
nv10_bo_update_tile_region(struct drm_device *dev, struct nouveau_drm_tile *reg,
      u32 addr, u32 size, u32 pitch, u32 flags)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 int i = reg - drm->tile.reg;
 struct nouveau_fb *pfb = nouveau_fb(drm->device);
 struct nouveau_fb_tile *tile = &pfb->tile.region[i];
 struct nouveau_engine *engine;

 nouveau_fence_unref(&reg->fence);

 if (tile->pitch)
  pfb->tile.fini(pfb, i, tile);

 if (pitch)
  pfb->tile.init(pfb, i, addr, size, pitch, flags, tile);

 pfb->tile.prog(pfb, i, tile);

 if ((engine = nouveau_engine(pfb, NVDEV_ENGINE_GR)))
  engine->tile_prog(engine, i);
 if ((engine = nouveau_engine(pfb, NVDEV_ENGINE_MPEG)))
  engine->tile_prog(engine, i);
}
