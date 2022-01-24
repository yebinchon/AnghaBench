#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct nouveau_fbdev {int /*<<< orphan*/  dev; } ;
struct nouveau_drm {struct nouveau_channel* channel; } ;
struct nouveau_channel {int dummy; } ;
struct TYPE_4__ {scalar_t__ visual; } ;
struct TYPE_3__ {int bits_per_pixel; } ;
struct fb_info {int* pseudo_palette; TYPE_2__ fix; TYPE_1__ var; struct nouveau_fbdev* par; } ;
struct fb_image {int depth; int width; int height; size_t bg_color; size_t fg_color; int dx; int dy; scalar_t__ data; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_channel*,int /*<<< orphan*/ ,int,int) ; 
 int ENODEV ; 
 scalar_t__ FB_VISUAL_DIRECTCOLOR ; 
 scalar_t__ FB_VISUAL_TRUECOLOR ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_channel*) ; 
 int /*<<< orphan*/  NvSub2D ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_channel*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_channel*,int*,int) ; 
 int FUNC6 (struct nouveau_channel*,int) ; 
 struct nouveau_drm* FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct fb_info *info, const struct fb_image *image)
{
	struct nouveau_fbdev *nfbdev = info->par;
	struct nouveau_drm *drm = FUNC7(nfbdev->dev);
	struct nouveau_channel *chan = drm->channel;
	uint32_t width, dwords, *data = (uint32_t *)image->data;
	uint32_t mask = ~(~0 >> (32 - info->var.bits_per_pixel));
	uint32_t *palette = info->pseudo_palette;
	int ret;

	if (image->depth != 1)
		return -ENODEV;

	ret = FUNC6(chan, 11);
	if (ret)
		return ret;

	width = FUNC0(image->width, 32);
	dwords = (width * image->height) >> 5;

	FUNC2(chan, NvSub2D, 0x0814, 2);
	if (info->fix.visual == FB_VISUAL_TRUECOLOR ||
	    info->fix.visual == FB_VISUAL_DIRECTCOLOR) {
		FUNC4  (chan, palette[image->bg_color] | mask);
		FUNC4  (chan, palette[image->fg_color] | mask);
	} else {
		FUNC4  (chan, image->bg_color);
		FUNC4  (chan, image->fg_color);
	}
	FUNC2(chan, NvSub2D, 0x0838, 2);
	FUNC4  (chan, image->width);
	FUNC4  (chan, image->height);
	FUNC2(chan, NvSub2D, 0x0850, 4);
	FUNC4  (chan, 0);
	FUNC4  (chan, image->dx);
	FUNC4  (chan, 0);
	FUNC4  (chan, image->dy);

	while (dwords) {
		int push = dwords > 2047 ? 2047 : dwords;

		ret = FUNC6(chan, push + 1);
		if (ret)
			return ret;

		dwords -= push;

		FUNC1(chan, NvSub2D, 0x0860, push);
		FUNC5(chan, data, push);
		data += push;
	}

	FUNC3(chan);
	return 0;
}