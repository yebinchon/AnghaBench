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
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
struct TYPE_2__ {int pipe; } ;
typedef  TYPE_1__ drm_i915_vblank_pipe_t ;
typedef  int /*<<< orphan*/  drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DRM_I915_VBLANK_PIPE_A ; 
 int DRM_I915_VBLANK_PIPE_B ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct drm_device *dev, void *data,
			 struct drm_file *file_priv)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	drm_i915_vblank_pipe_t *pipe = data;

	if (FUNC1(dev, DRIVER_MODESET))
		return -ENODEV;

	if (!dev_priv) {
		FUNC0("called with no initialization\n");
		return -EINVAL;
	}

	pipe->pipe = DRM_I915_VBLANK_PIPE_A | DRM_I915_VBLANK_PIPE_B;

	return 0;
}