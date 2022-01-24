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
struct TYPE_3__ {scalar_t__ stop_rings; } ;
struct drm_i915_private {TYPE_1__ gpu_error; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENODEV ; 
 TYPE_2__* FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*) ; 
 int FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct drm_device*) ; 

int FUNC7(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int ret = -ENODEV;

	switch (FUNC2(dev)->gen) {
	case 7:
	case 6:
		ret = FUNC3(dev);
		break;
	case 5:
		ret = FUNC6(dev);
		break;
	case 4:
		ret = FUNC5(dev);
		break;
	case 2:
		ret = FUNC4(dev);
		break;
	}

	/* Also reset the gpu hangman. */
	if (dev_priv->gpu_error.stop_rings) {
		FUNC0("Simulated gpu hang, resetting stop_rings\n");
		dev_priv->gpu_error.stop_rings = 0;
		if (ret == -ENODEV) {
			FUNC1("Reset not implemented, but ignoring "
				  "error for simulated gpu hangs\n");
			ret = 0;
		}
	}

	return ret;
}