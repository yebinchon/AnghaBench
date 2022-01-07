
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nouveau_object {int dummy; } ;
struct nouveau_fbdev {struct drm_device* dev; } ;
struct nouveau_drm {int device; struct nouveau_channel* channel; } ;
struct nouveau_device {scalar_t__ card_type; int chipset; } ;
struct nouveau_channel {int cli; } ;
struct TYPE_5__ {int length; } ;
struct TYPE_8__ {int bits_per_pixel; int yres_virtual; int xres_virtual; TYPE_1__ transp; } ;
struct TYPE_6__ {int line_length; int smem_start; } ;
struct fb_info {TYPE_4__ var; TYPE_2__ fix; struct nouveau_fbdev* par; } ;
struct TYPE_7__ {int fb_base; } ;
struct drm_device {TYPE_3__ mode_config; } ;


 int BEGIN_NV04 (struct nouveau_channel*,int ,int,int) ;
 int EINVAL ;
 int FIRE_RING (struct nouveau_channel*) ;
 int NVDRM_CHAN ;
 scalar_t__ NV_10 ;
 int NvClipRect ;
 int NvCtxSurf2D ;
 int NvDmaFB ;
 int NvGdiRect ;
 int NvImageBlit ;
 int NvImagePatt ;
 int NvRop ;
 int NvSubCtxSurf2D ;
 int NvSubGdiRect ;
 int NvSubImageBlit ;
 int OUT_RING (struct nouveau_channel*,int) ;
 scalar_t__ RING_SPACE (struct nouveau_channel*,int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_fbcon_gpu_lockup (struct fb_info*) ;
 int nouveau_object_new (int ,int ,int,int,int *,int ,struct nouveau_object**) ;
 struct nouveau_device* nv_device (int ) ;
 int nv_object (int ) ;

int
nv04_fbcon_accel_init(struct fb_info *info)
{
 struct nouveau_fbdev *nfbdev = info->par;
 struct drm_device *dev = nfbdev->dev;
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_channel *chan = drm->channel;
 struct nouveau_device *device = nv_device(drm->device);
 struct nouveau_object *object;
 int surface_fmt, pattern_fmt, rect_fmt;
 int ret;

 switch (info->var.bits_per_pixel) {
 case 8:
  surface_fmt = 1;
  pattern_fmt = 3;
  rect_fmt = 3;
  break;
 case 16:
  surface_fmt = 4;
  pattern_fmt = 1;
  rect_fmt = 1;
  break;
 case 32:
  switch (info->var.transp.length) {
  case 0:
  case 8:
   break;
  default:
   return -EINVAL;
  }

  surface_fmt = 6;
  pattern_fmt = 3;
  rect_fmt = 3;
  break;
 default:
  return -EINVAL;
 }

 ret = nouveau_object_new(nv_object(chan->cli), NVDRM_CHAN, NvCtxSurf2D,
     device->card_type >= NV_10 ? 0x0062 : 0x0042,
     ((void*)0), 0, &object);
 if (ret)
  return ret;

 ret = nouveau_object_new(nv_object(chan->cli), NVDRM_CHAN, NvClipRect,
     0x0019, ((void*)0), 0, &object);
 if (ret)
  return ret;

 ret = nouveau_object_new(nv_object(chan->cli), NVDRM_CHAN, NvRop,
     0x0043, ((void*)0), 0, &object);
 if (ret)
  return ret;

 ret = nouveau_object_new(nv_object(chan->cli), NVDRM_CHAN, NvImagePatt,
     0x0044, ((void*)0), 0, &object);
 if (ret)
  return ret;

 ret = nouveau_object_new(nv_object(chan->cli), NVDRM_CHAN, NvGdiRect,
     0x004a, ((void*)0), 0, &object);
 if (ret)
  return ret;

 ret = nouveau_object_new(nv_object(chan->cli), NVDRM_CHAN, NvImageBlit,
     device->chipset >= 0x11 ? 0x009f : 0x005f,
     ((void*)0), 0, &object);
 if (ret)
  return ret;

 if (RING_SPACE(chan, 49)) {
  nouveau_fbcon_gpu_lockup(info);
  return 0;
 }

 BEGIN_NV04(chan, NvSubCtxSurf2D, 0x0000, 1);
 OUT_RING(chan, NvCtxSurf2D);
 BEGIN_NV04(chan, NvSubCtxSurf2D, 0x0184, 2);
 OUT_RING(chan, NvDmaFB);
 OUT_RING(chan, NvDmaFB);
 BEGIN_NV04(chan, NvSubCtxSurf2D, 0x0300, 4);
 OUT_RING(chan, surface_fmt);
 OUT_RING(chan, info->fix.line_length | (info->fix.line_length << 16));
 OUT_RING(chan, info->fix.smem_start - dev->mode_config.fb_base);
 OUT_RING(chan, info->fix.smem_start - dev->mode_config.fb_base);

 BEGIN_NV04(chan, NvSubCtxSurf2D, 0x0000, 1);
 OUT_RING(chan, NvRop);
 BEGIN_NV04(chan, NvSubCtxSurf2D, 0x0300, 1);
 OUT_RING(chan, 0x55);

 BEGIN_NV04(chan, NvSubCtxSurf2D, 0x0000, 1);
 OUT_RING(chan, NvImagePatt);
 BEGIN_NV04(chan, NvSubCtxSurf2D, 0x0300, 8);
 OUT_RING(chan, pattern_fmt);



 OUT_RING(chan, 1);

 OUT_RING(chan, 0);
 OUT_RING(chan, 1);
 OUT_RING(chan, ~0);
 OUT_RING(chan, ~0);
 OUT_RING(chan, ~0);
 OUT_RING(chan, ~0);

 BEGIN_NV04(chan, NvSubCtxSurf2D, 0x0000, 1);
 OUT_RING(chan, NvClipRect);
 BEGIN_NV04(chan, NvSubCtxSurf2D, 0x0300, 2);
 OUT_RING(chan, 0);
 OUT_RING(chan, (info->var.yres_virtual << 16) | info->var.xres_virtual);

 BEGIN_NV04(chan, NvSubImageBlit, 0x0000, 1);
 OUT_RING(chan, NvImageBlit);
 BEGIN_NV04(chan, NvSubImageBlit, 0x019c, 1);
 OUT_RING(chan, NvCtxSurf2D);
 BEGIN_NV04(chan, NvSubImageBlit, 0x02fc, 1);
 OUT_RING(chan, 3);

 BEGIN_NV04(chan, NvSubGdiRect, 0x0000, 1);
 OUT_RING(chan, NvGdiRect);
 BEGIN_NV04(chan, NvSubGdiRect, 0x0198, 1);
 OUT_RING(chan, NvCtxSurf2D);
 BEGIN_NV04(chan, NvSubGdiRect, 0x0188, 2);
 OUT_RING(chan, NvImagePatt);
 OUT_RING(chan, NvRop);
 BEGIN_NV04(chan, NvSubGdiRect, 0x0304, 1);
 OUT_RING(chan, 1);
 BEGIN_NV04(chan, NvSubGdiRect, 0x0300, 1);
 OUT_RING(chan, rect_fmt);
 BEGIN_NV04(chan, NvSubGdiRect, 0x02fc, 1);
 OUT_RING(chan, 3);

 FIRE_RING(chan);

 return 0;
}
