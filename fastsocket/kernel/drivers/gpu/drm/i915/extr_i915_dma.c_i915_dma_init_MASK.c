#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int func; } ;
typedef  TYPE_1__ drm_i915_init_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int EINVAL ; 
 int ENODEV ; 
#define  I915_CLEANUP_DMA 130 
#define  I915_INIT_DMA 129 
#define  I915_RESUME_DMA 128 
 scalar_t__ FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev, void *data,
			 struct drm_file *file_priv)
{
	drm_i915_init_t *init = data;
	int retcode = 0;

	if (FUNC0(dev, DRIVER_MODESET))
		return -ENODEV;

	switch (init->func) {
	case I915_INIT_DMA:
		retcode = FUNC3(dev, init);
		break;
	case I915_CLEANUP_DMA:
		retcode = FUNC1(dev);
		break;
	case I915_RESUME_DMA:
		retcode = FUNC2(dev);
		break;
	default:
		retcode = -EINVAL;
		break;
	}

	return retcode;
}