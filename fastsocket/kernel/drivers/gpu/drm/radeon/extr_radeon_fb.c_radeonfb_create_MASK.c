#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {struct fb_info* fbdev; struct drm_framebuffer* fb; } ;
struct drm_framebuffer {unsigned long* pitches; unsigned long depth; } ;
struct TYPE_11__ {struct drm_framebuffer base; } ;
struct radeon_fbdev {TYPE_6__ helper; TYPE_5__ rfb; struct radeon_device* rdev; } ;
struct TYPE_9__ {unsigned long vram_start; unsigned long aper_base; } ;
struct radeon_device {TYPE_4__* ddev; TYPE_3__ mc; TYPE_1__* pdev; } ;
struct radeon_bo {int /*<<< orphan*/ * kptr; } ;
struct TYPE_8__ {unsigned long smem_start; void* smem_len; int /*<<< orphan*/  id; } ;
struct fb_info {int flags; TYPE_2__ fix; int /*<<< orphan*/  cmap; int /*<<< orphan*/ * screen_base; void* screen_size; int /*<<< orphan*/ * fbops; struct radeon_fbdev* par; } ;
struct drm_mode_fb_cmd2 {int /*<<< orphan*/  pixel_format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct drm_gem_object {int dummy; } ;
struct drm_fb_helper_surface_size {int surface_bpp; int /*<<< orphan*/  fb_height; int /*<<< orphan*/  fb_width; int /*<<< orphan*/  surface_depth; int /*<<< orphan*/  surface_height; int /*<<< orphan*/  surface_width; } ;
struct drm_fb_helper {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  pdev; } ;
struct TYPE_7__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int FBINFO_CAN_FORCE_OUTPUT ; 
 int FBINFO_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC10 (int /*<<< orphan*/ ,struct device*) ; 
 struct radeon_bo* FUNC11 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,void*) ; 
 unsigned long FUNC14 (struct radeon_bo*) ; 
 void* FUNC15 (struct radeon_bo*) ; 
 int FUNC16 (TYPE_4__*,TYPE_5__*,struct drm_mode_fb_cmd2*,struct drm_gem_object*) ; 
 int FUNC17 (struct radeon_fbdev*,struct drm_mode_fb_cmd2*,struct drm_gem_object**) ; 
 int /*<<< orphan*/  radeonfb_ops ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct fb_info*) ; 

__attribute__((used)) static int FUNC20(struct drm_fb_helper *helper,
			   struct drm_fb_helper_surface_size *sizes)
{
	struct radeon_fbdev *rfbdev = (struct radeon_fbdev *)helper;
	struct radeon_device *rdev = rfbdev->rdev;
	struct fb_info *info;
	struct drm_framebuffer *fb = NULL;
	struct drm_mode_fb_cmd2 mode_cmd;
	struct drm_gem_object *gobj = NULL;
	struct radeon_bo *rbo = NULL;
	struct device *device = &rdev->pdev->dev;
	int ret;
	unsigned long tmp;

	mode_cmd.width = sizes->surface_width;
	mode_cmd.height = sizes->surface_height;

	/* avivo can't scanout real 24bpp */
	if ((sizes->surface_bpp == 24) && FUNC0(rdev))
		sizes->surface_bpp = 32;

	mode_cmd.pixel_format = FUNC8(sizes->surface_bpp,
							  sizes->surface_depth);

	ret = FUNC17(rfbdev, &mode_cmd, &gobj);
	if (ret) {
		FUNC1("failed to create fbcon object %d\n", ret);
		return ret;
	}

	rbo = FUNC11(gobj);

	/* okay we have an object now allocate the framebuffer */
	info = FUNC10(0, device);
	if (info == NULL) {
		ret = -ENOMEM;
		goto out_unref;
	}

	info->par = rfbdev;

	ret = FUNC16(rdev->ddev, &rfbdev->rfb, &mode_cmd, gobj);
	if (ret) {
		FUNC1("failed to initalise framebuffer %d\n", ret);
		goto out_unref;
	}

	fb = &rfbdev->rfb.base;

	/* setup helper */
	rfbdev->helper.fb = fb;
	rfbdev->helper.fbdev = info;

	FUNC13(rbo->kptr, 0x0, FUNC15(rbo));

	FUNC18(info->fix.id, "radeondrmfb");

	FUNC3(info, fb->pitches[0], fb->depth);

	info->flags = FBINFO_DEFAULT | FBINFO_CAN_FORCE_OUTPUT;
	info->fbops = &radeonfb_ops;

	tmp = FUNC14(rbo) - rdev->mc.vram_start;
	info->fix.smem_start = rdev->mc.aper_base + tmp;
	info->fix.smem_len = FUNC15(rbo);
	info->screen_base = rbo->kptr;
	info->screen_size = FUNC15(rbo);

	FUNC4(info, &rfbdev->helper, sizes->fb_width, sizes->fb_height);

	/* Use default scratch pixmap (info->pixmap.flags = FB_PIXMAP_SYSTEM) */

	if (info->screen_base == NULL) {
		ret = -ENOSPC;
		goto out_unref;
	}

	ret = FUNC9(&info->cmap, 256, 0);
	if (ret) {
		ret = -ENOMEM;
		goto out_unref;
	}

	FUNC2("fb mappable at 0x%lX\n",  info->fix.smem_start);
	FUNC2("vram apper at 0x%lX\n",  (unsigned long)rdev->mc.aper_base);
	FUNC2("size %lu\n", (unsigned long)FUNC15(rbo));
	FUNC2("fb depth is %d\n", fb->depth);
	FUNC2("   pitch is %d\n", fb->pitches[0]);

	FUNC19(rdev->ddev->pdev, info);
	return 0;

out_unref:
	if (rbo) {

	}
	if (fb && ret) {
		FUNC7(gobj);
		FUNC6(fb);
		FUNC5(fb);
		FUNC12(fb);
	}
	return ret;
}