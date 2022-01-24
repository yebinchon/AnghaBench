#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nouveau_object {int dummy; } ;
struct nouveau_fbdev {struct drm_device* dev; } ;
struct nouveau_drm {int /*<<< orphan*/  device; struct nouveau_channel* channel; } ;
struct nouveau_device {scalar_t__ card_type; int chipset; } ;
struct nouveau_channel {int /*<<< orphan*/  cli; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; } ;
struct TYPE_8__ {int bits_per_pixel; int yres_virtual; int xres_virtual; TYPE_1__ transp; } ;
struct TYPE_6__ {int line_length; int smem_start; } ;
struct fb_info {TYPE_4__ var; TYPE_2__ fix; struct nouveau_fbdev* par; } ;
struct TYPE_7__ {int fb_base; } ;
struct drm_device {TYPE_3__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*) ; 
 int /*<<< orphan*/  NVDRM_CHAN ; 
 scalar_t__ NV_10 ; 
 int NvClipRect ; 
 int NvCtxSurf2D ; 
 int NvDmaFB ; 
 int NvGdiRect ; 
 int NvImageBlit ; 
 int NvImagePatt ; 
 int NvRop ; 
 int /*<<< orphan*/  NvSubCtxSurf2D ; 
 int /*<<< orphan*/  NvSubGdiRect ; 
 int /*<<< orphan*/  NvSubImageBlit ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_channel*,int) ; 
 scalar_t__ FUNC3 (struct nouveau_channel*,int) ; 
 struct nouveau_drm* FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nouveau_object**) ; 
 struct nouveau_device* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(struct fb_info *info)
{
	struct nouveau_fbdev *nfbdev = info->par;
	struct drm_device *dev = nfbdev->dev;
	struct nouveau_drm *drm = FUNC4(dev);
	struct nouveau_channel *chan = drm->channel;
	struct nouveau_device *device = FUNC7(drm->device);
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
		case 0: /* depth 24 */
		case 8: /* depth 32 */
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

	ret = FUNC6(FUNC8(chan->cli), NVDRM_CHAN, NvCtxSurf2D,
				 device->card_type >= NV_10 ? 0x0062 : 0x0042,
				 NULL, 0, &object);
	if (ret)
		return ret;

	ret = FUNC6(FUNC8(chan->cli), NVDRM_CHAN, NvClipRect,
				 0x0019, NULL, 0, &object);
	if (ret)
		return ret;

	ret = FUNC6(FUNC8(chan->cli), NVDRM_CHAN, NvRop,
				 0x0043, NULL, 0, &object);
	if (ret)
		return ret;

	ret = FUNC6(FUNC8(chan->cli), NVDRM_CHAN, NvImagePatt,
				 0x0044, NULL, 0, &object);
	if (ret)
		return ret;

	ret = FUNC6(FUNC8(chan->cli), NVDRM_CHAN, NvGdiRect,
				 0x004a, NULL, 0, &object);
	if (ret)
		return ret;

	ret = FUNC6(FUNC8(chan->cli), NVDRM_CHAN, NvImageBlit,
				 device->chipset >= 0x11 ? 0x009f : 0x005f,
				 NULL, 0, &object);
	if (ret)
		return ret;

	if (FUNC3(chan, 49)) {
		FUNC5(info);
		return 0;
	}

	FUNC0(chan, NvSubCtxSurf2D, 0x0000, 1);
	FUNC2(chan, NvCtxSurf2D);
	FUNC0(chan, NvSubCtxSurf2D, 0x0184, 2);
	FUNC2(chan, NvDmaFB);
	FUNC2(chan, NvDmaFB);
	FUNC0(chan, NvSubCtxSurf2D, 0x0300, 4);
	FUNC2(chan, surface_fmt);
	FUNC2(chan, info->fix.line_length | (info->fix.line_length << 16));
	FUNC2(chan, info->fix.smem_start - dev->mode_config.fb_base);
	FUNC2(chan, info->fix.smem_start - dev->mode_config.fb_base);

	FUNC0(chan, NvSubCtxSurf2D, 0x0000, 1);
	FUNC2(chan, NvRop);
	FUNC0(chan, NvSubCtxSurf2D, 0x0300, 1);
	FUNC2(chan, 0x55);

	FUNC0(chan, NvSubCtxSurf2D, 0x0000, 1);
	FUNC2(chan, NvImagePatt);
	FUNC0(chan, NvSubCtxSurf2D, 0x0300, 8);
	FUNC2(chan, pattern_fmt);
#ifdef __BIG_ENDIAN
	OUT_RING(chan, 2);
#else
	FUNC2(chan, 1);
#endif
	FUNC2(chan, 0);
	FUNC2(chan, 1);
	FUNC2(chan, ~0);
	FUNC2(chan, ~0);
	FUNC2(chan, ~0);
	FUNC2(chan, ~0);

	FUNC0(chan, NvSubCtxSurf2D, 0x0000, 1);
	FUNC2(chan, NvClipRect);
	FUNC0(chan, NvSubCtxSurf2D, 0x0300, 2);
	FUNC2(chan, 0);
	FUNC2(chan, (info->var.yres_virtual << 16) | info->var.xres_virtual);

	FUNC0(chan, NvSubImageBlit, 0x0000, 1);
	FUNC2(chan, NvImageBlit);
	FUNC0(chan, NvSubImageBlit, 0x019c, 1);
	FUNC2(chan, NvCtxSurf2D);
	FUNC0(chan, NvSubImageBlit, 0x02fc, 1);
	FUNC2(chan, 3);

	FUNC0(chan, NvSubGdiRect, 0x0000, 1);
	FUNC2(chan, NvGdiRect);
	FUNC0(chan, NvSubGdiRect, 0x0198, 1);
	FUNC2(chan, NvCtxSurf2D);
	FUNC0(chan, NvSubGdiRect, 0x0188, 2);
	FUNC2(chan, NvImagePatt);
	FUNC2(chan, NvRop);
	FUNC0(chan, NvSubGdiRect, 0x0304, 1);
	FUNC2(chan, 1);
	FUNC0(chan, NvSubGdiRect, 0x0300, 1);
	FUNC2(chan, rect_fmt);
	FUNC0(chan, NvSubGdiRect, 0x02fc, 1);
	FUNC2(chan, 3);

	FUNC1(chan);

	return 0;
}