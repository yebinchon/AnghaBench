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
struct TYPE_3__ {int /*<<< orphan*/  num_crtc; int /*<<< orphan*/  crtc_list; int /*<<< orphan*/  mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_crtc_funcs {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * properties; } ;
struct drm_crtc {int invert_dimensions; int /*<<< orphan*/  head; int /*<<< orphan*/  properties; TYPE_2__ base; int /*<<< orphan*/  mutex; struct drm_crtc_funcs const* funcs; struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_OBJECT_CRTC ; 
 int FUNC0 (struct drm_device*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(struct drm_device *dev, struct drm_crtc *crtc,
		   const struct drm_crtc_funcs *funcs)
{
	int ret;

	crtc->dev = dev;
	crtc->funcs = funcs;
	crtc->invert_dimensions = false;

	FUNC1(dev);
	FUNC4(&crtc->mutex);
	FUNC5(&crtc->mutex, &dev->mode_config.mutex);

	ret = FUNC0(dev, &crtc->base, DRM_MODE_OBJECT_CRTC);
	if (ret)
		goto out;

	crtc->base.properties = &crtc->properties;

	FUNC3(&crtc->head, &dev->mode_config.crtc_list);
	dev->mode_config.num_crtc++;

 out:
	FUNC2(dev);

	return ret;
}