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
struct drm_mode_fb_cmd2 {int flags; int fb_id; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct drm_mode_config {TYPE_1__* funcs; int /*<<< orphan*/  max_height; int /*<<< orphan*/  min_height; int /*<<< orphan*/  max_width; int /*<<< orphan*/  min_width; } ;
struct TYPE_4__ {int id; } ;
struct drm_framebuffer {TYPE_2__ base; int /*<<< orphan*/  filp_head; } ;
struct drm_file {int /*<<< orphan*/  fbs_lock; int /*<<< orphan*/  fbs; } ;
struct drm_device {struct drm_mode_config mode_config; } ;
struct TYPE_3__ {struct drm_framebuffer* (* fb_create ) (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int DRM_MODE_FB_INTERLACED ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct drm_framebuffer*) ; 
 int FUNC2 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_mode_fb_cmd2*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct drm_framebuffer* FUNC8 (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2*) ; 

int FUNC9(struct drm_device *dev,
		    void *data, struct drm_file *file_priv)
{
	struct drm_mode_fb_cmd2 *r = data;
	struct drm_mode_config *config = &dev->mode_config;
	struct drm_framebuffer *fb;
	int ret;

	if (!FUNC3(dev, DRIVER_MODESET))
		return -EINVAL;

	if (r->flags & ~DRM_MODE_FB_INTERLACED) {
		FUNC0("bad framebuffer flags 0x%08x\n", r->flags);
		return -EINVAL;
	}

	if ((config->min_width > r->width) || (r->width > config->max_width)) {
		FUNC0("bad framebuffer width %d, should be >= %d && <= %d\n",
			  r->width, config->min_width, config->max_width);
		return -EINVAL;
	}
	if ((config->min_height > r->height) || (r->height > config->max_height)) {
		FUNC0("bad framebuffer height %d, should be >= %d && <= %d\n",
			  r->height, config->min_height, config->max_height);
		return -EINVAL;
	}

	ret = FUNC4(r);
	if (ret)
		return ret;

	fb = dev->mode_config.funcs->fb_create(dev, file_priv, r);
	if (FUNC1(fb)) {
		FUNC0("could not create framebuffer\n");
		return FUNC2(fb);
	}

	FUNC6(&file_priv->fbs_lock);
	r->fb_id = fb->base.id;
	FUNC5(&fb->filp_head, &file_priv->fbs);
	FUNC0("[FB:%d]\n", fb->base.id);
	FUNC7(&file_priv->fbs_lock);


	return ret;
}