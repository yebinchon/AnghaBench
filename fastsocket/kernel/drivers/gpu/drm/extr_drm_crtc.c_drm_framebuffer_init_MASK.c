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
struct drm_framebuffer_funcs {int dummy; } ;
struct drm_framebuffer {int /*<<< orphan*/  head; int /*<<< orphan*/  base; struct drm_framebuffer_funcs const* funcs; struct drm_device* dev; int /*<<< orphan*/  filp_head; int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  fb_lock; int /*<<< orphan*/  fb_list; int /*<<< orphan*/  num_fb; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_OBJECT_FB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_framebuffer*) ; 
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct drm_device *dev, struct drm_framebuffer *fb,
			 const struct drm_framebuffer_funcs *funcs)
{
	int ret;

	FUNC5(&dev->mode_config.fb_lock);
	FUNC3(&fb->refcount);
	FUNC0(&fb->filp_head);
	fb->dev = dev;
	fb->funcs = funcs;

	ret = FUNC2(dev, &fb->base, DRM_MODE_OBJECT_FB);
	if (ret)
		goto out;

	/* Grab the idr reference. */
	FUNC1(fb);

	dev->mode_config.num_fb++;
	FUNC4(&fb->head, &dev->mode_config.fb_list);
out:
	FUNC6(&dev->mode_config.fb_lock);

	return 0;
}