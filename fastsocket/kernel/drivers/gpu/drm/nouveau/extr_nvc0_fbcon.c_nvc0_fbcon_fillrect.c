
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct nouveau_fbdev {int dev; } ;
struct nouveau_drm {struct nouveau_channel* channel; } ;
struct nouveau_channel {int dummy; } ;
struct TYPE_2__ {scalar_t__ visual; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_1__ fix; struct nouveau_fbdev* par; } ;
struct fb_fillrect {scalar_t__ rop; size_t color; int dx; int dy; int width; int height; } ;


 int BEGIN_NVC0 (struct nouveau_channel*,int ,int,int) ;
 scalar_t__ FB_VISUAL_DIRECTCOLOR ;
 scalar_t__ FB_VISUAL_TRUECOLOR ;
 int FIRE_RING (struct nouveau_channel*) ;
 int NvSub2D ;
 int OUT_RING (struct nouveau_channel*,int) ;
 int RING_SPACE (struct nouveau_channel*,int) ;
 scalar_t__ ROP_COPY ;
 struct nouveau_drm* nouveau_drm (int ) ;

int
nvc0_fbcon_fillrect(struct fb_info *info, const struct fb_fillrect *rect)
{
 struct nouveau_fbdev *nfbdev = info->par;
 struct nouveau_drm *drm = nouveau_drm(nfbdev->dev);
 struct nouveau_channel *chan = drm->channel;
 int ret;

 ret = RING_SPACE(chan, rect->rop == ROP_COPY ? 7 : 11);
 if (ret)
  return ret;

 if (rect->rop != ROP_COPY) {
  BEGIN_NVC0(chan, NvSub2D, 0x02ac, 1);
  OUT_RING (chan, 1);
 }
 BEGIN_NVC0(chan, NvSub2D, 0x0588, 1);
 if (info->fix.visual == FB_VISUAL_TRUECOLOR ||
     info->fix.visual == FB_VISUAL_DIRECTCOLOR)
  OUT_RING (chan, ((uint32_t *)info->pseudo_palette)[rect->color]);
 else
  OUT_RING (chan, rect->color);
 BEGIN_NVC0(chan, NvSub2D, 0x0600, 4);
 OUT_RING (chan, rect->dx);
 OUT_RING (chan, rect->dy);
 OUT_RING (chan, rect->dx + rect->width);
 OUT_RING (chan, rect->dy + rect->height);
 if (rect->rop != ROP_COPY) {
  BEGIN_NVC0(chan, NvSub2D, 0x02ac, 1);
  OUT_RING (chan, 3);
 }
 FIRE_RING(chan);
 return 0;
}
