
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fbdev {int dev; } ;
struct nouveau_drm {struct nouveau_channel* channel; } ;
struct nouveau_channel {int dummy; } ;
struct fb_info {struct nouveau_fbdev* par; } ;
struct fb_copyarea {int sy; int sx; int dy; int dx; int height; int width; } ;


 int BEGIN_NV04 (struct nouveau_channel*,int ,int,int) ;
 int FIRE_RING (struct nouveau_channel*) ;
 int NvSubImageBlit ;
 int OUT_RING (struct nouveau_channel*,int) ;
 int RING_SPACE (struct nouveau_channel*,int) ;
 struct nouveau_drm* nouveau_drm (int ) ;

int
nv04_fbcon_copyarea(struct fb_info *info, const struct fb_copyarea *region)
{
 struct nouveau_fbdev *nfbdev = info->par;
 struct nouveau_drm *drm = nouveau_drm(nfbdev->dev);
 struct nouveau_channel *chan = drm->channel;
 int ret;

 ret = RING_SPACE(chan, 4);
 if (ret)
  return ret;

 BEGIN_NV04(chan, NvSubImageBlit, 0x0300, 3);
 OUT_RING(chan, (region->sy << 16) | region->sx);
 OUT_RING(chan, (region->dy << 16) | region->dx);
 OUT_RING(chan, (region->height << 16) | region->width);
 FIRE_RING(chan);
 return 0;
}
