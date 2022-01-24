#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct nouveau_fbdev {int /*<<< orphan*/  dev; } ;
struct nouveau_drm {struct nouveau_channel* channel; } ;
struct nouveau_channel {int dummy; } ;
struct TYPE_2__ {scalar_t__ visual; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_1__ fix; struct nouveau_fbdev* par; } ;
struct fb_image {int depth; int width; int height; size_t fg_color; size_t bg_color; int dy; int dx; scalar_t__ data; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*,int /*<<< orphan*/ ,int,int) ; 
 int ENODEV ; 
 scalar_t__ FB_VISUAL_DIRECTCOLOR ; 
 scalar_t__ FB_VISUAL_TRUECOLOR ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_channel*) ; 
 int /*<<< orphan*/  NvSubGdiRect ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_channel*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_channel*,int*,int) ; 
 int FUNC5 (struct nouveau_channel*,int) ; 
 struct nouveau_drm* FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(struct fb_info *info, const struct fb_image *image)
{
	struct nouveau_fbdev *nfbdev = info->par;
	struct nouveau_drm *drm = FUNC6(nfbdev->dev);
	struct nouveau_channel *chan = drm->channel;
	uint32_t fg;
	uint32_t bg;
	uint32_t dsize;
	uint32_t width;
	uint32_t *data = (uint32_t *)image->data;
	int ret;

	if (image->depth != 1)
		return -ENODEV;

	ret = FUNC5(chan, 8);
	if (ret)
		return ret;

	width = FUNC0(image->width, 8);
	dsize = FUNC0(width * image->height, 32) >> 5;

	if (info->fix.visual == FB_VISUAL_TRUECOLOR ||
	    info->fix.visual == FB_VISUAL_DIRECTCOLOR) {
		fg = ((uint32_t *) info->pseudo_palette)[image->fg_color];
		bg = ((uint32_t *) info->pseudo_palette)[image->bg_color];
	} else {
		fg = image->fg_color;
		bg = image->bg_color;
	}

	FUNC1(chan, NvSubGdiRect, 0x0be4, 7);
	FUNC3(chan, (image->dy << 16) | (image->dx & 0xffff));
	FUNC3(chan, ((image->dy + image->height) << 16) |
			 ((image->dx + image->width) & 0xffff));
	FUNC3(chan, bg);
	FUNC3(chan, fg);
	FUNC3(chan, (image->height << 16) | width);
	FUNC3(chan, (image->height << 16) | image->width);
	FUNC3(chan, (image->dy << 16) | (image->dx & 0xffff));

	while (dsize) {
		int iter_len = dsize > 128 ? 128 : dsize;

		ret = FUNC5(chan, iter_len + 1);
		if (ret)
			return ret;

		FUNC1(chan, NvSubGdiRect, 0x0c00, iter_len);
		FUNC4(chan, data, iter_len);
		data += iter_len;
		dsize -= iter_len;
	}

	FUNC2(chan);
	return 0;
}