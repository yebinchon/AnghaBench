#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timeval {int dummy; } ;
struct drm_i915_private {int num_pipe; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int FUNC2 (struct drm_device*,int,int*,struct timeval*,unsigned int,struct drm_crtc*) ; 
 struct drm_crtc* FUNC3 (struct drm_device*,int) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev, int pipe,
			      int *max_error,
			      struct timeval *vblank_time,
			      unsigned flags)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct drm_crtc *crtc;

	if (pipe < 0 || pipe >= dev_priv->num_pipe) {
		FUNC1("Invalid crtc %d\n", pipe);
		return -EINVAL;
	}

	/* Get drm_crtc to timestamp: */
	crtc = FUNC3(dev, pipe);
	if (crtc == NULL) {
		FUNC1("Invalid crtc %d\n", pipe);
		return -EINVAL;
	}

	if (!crtc->enabled) {
		FUNC0("crtc %d is disabled\n", pipe);
		return -EBUSY;
	}

	/* Helper routine in DRM core does all the work: */
	return FUNC2(dev, pipe, max_error,
						     vblank_time, flags,
						     crtc);
}