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
struct intel_crtc {scalar_t__ plane; int /*<<< orphan*/  pipe; } ;
struct TYPE_3__ {int (* update_plane ) (struct drm_crtc*,struct drm_framebuffer*,int,int) ;} ;
struct drm_i915_private {scalar_t__ num_pipe; TYPE_1__ display; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; struct drm_i915_private* dev_private; } ;
struct drm_crtc {int x; int y; struct drm_framebuffer* fb; struct drm_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_framebuffer*) ; 
 int FUNC3 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct drm_crtc*,struct drm_framebuffer*,int,int) ; 
 struct intel_crtc* FUNC10 (struct drm_crtc*) ; 
 TYPE_2__* FUNC11 (struct drm_framebuffer*) ; 

__attribute__((used)) static int
FUNC12(struct drm_crtc *crtc, int x, int y,
		    struct drm_framebuffer *fb)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC10(crtc);
	struct drm_framebuffer *old_fb;
	int ret;

	/* no fb bound */
	if (!fb) {
		FUNC0("No FB bound\n");
		return 0;
	}

	if(intel_crtc->plane > dev_priv->num_pipe) {
		FUNC0("no plane for crtc: plane %d, num_pipes %d\n",
				intel_crtc->plane,
				dev_priv->num_pipe);
		return -EINVAL;
	}

	FUNC7(&dev->struct_mutex);
	ret = FUNC3(dev,
					 FUNC11(fb)->obj,
					 NULL);
	if (ret != 0) {
		FUNC8(&dev->struct_mutex);
		FUNC0("pin & fence failed\n");
		return ret;
	}

	if (crtc->fb)
		FUNC2(crtc->fb);

	ret = dev_priv->display.update_plane(crtc, fb, x, y);
	if (ret) {
		FUNC4(FUNC11(fb)->obj);
		FUNC8(&dev->struct_mutex);
		FUNC0("failed to update base address\n");
		return ret;
	}

	old_fb = crtc->fb;
	crtc->fb = fb;
	crtc->x = x;
	crtc->y = y;

	if (old_fb) {
		FUNC6(dev, intel_crtc->pipe);
		FUNC4(FUNC11(old_fb)->obj);
	}

	FUNC5(dev);
	FUNC8(&dev->struct_mutex);

	FUNC1(crtc, x, y);

	return 0;
}