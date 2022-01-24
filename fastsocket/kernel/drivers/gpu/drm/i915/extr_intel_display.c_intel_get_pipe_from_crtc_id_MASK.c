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
struct intel_crtc {int /*<<< orphan*/  pipe; } ;
struct drm_mode_object {int dummy; } ;
struct drm_i915_get_pipe_from_crtc_id {int /*<<< orphan*/  pipe; int /*<<< orphan*/  crtc_id; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_CRTC ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct drm_mode_object* FUNC2 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_mode_object*) ; 
 struct intel_crtc* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct drm_device *dev, void *data,
				struct drm_file *file)
{
	struct drm_i915_get_pipe_from_crtc_id *pipe_from_crtc_id = data;
	struct drm_mode_object *drmmode_obj;
	struct intel_crtc *crtc;

	if (!FUNC1(dev, DRIVER_MODESET))
		return -ENODEV;

	drmmode_obj = FUNC2(dev, pipe_from_crtc_id->crtc_id,
			DRM_MODE_OBJECT_CRTC);

	if (!drmmode_obj) {
		FUNC0("no such CRTC id\n");
		return -EINVAL;
	}

	crtc = FUNC4(FUNC3(drmmode_obj));
	pipe_from_crtc_id->pipe = crtc->pipe;

	return 0;
}