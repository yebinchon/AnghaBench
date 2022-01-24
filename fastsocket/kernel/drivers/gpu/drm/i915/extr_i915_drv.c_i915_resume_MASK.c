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
struct TYPE_2__ {int /*<<< orphan*/  header; } ;
struct drm_i915_private {TYPE_1__ opregion; } ;
struct drm_device {scalar_t__ switch_power_state; int /*<<< orphan*/  struct_mutex; int /*<<< orphan*/  pdev; struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 scalar_t__ DRM_SWITCH_POWER_OFF ; 
 int EIO ; 
 int FUNC0 (struct drm_device*) ; 
 scalar_t__ FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int ret;

	if (dev->switch_power_state == DRM_SWITCH_POWER_OFF)
		return 0;

	if (FUNC7(dev->pdev))
		return -EIO;

	FUNC8(dev->pdev);

	FUNC4(dev);

	/*
	 * Platforms with opregion should have sane BIOS, older ones (gen3 and
	 * earlier) need this since the BIOS might clear all our scratch PTEs.
	 */
	if (FUNC1(dev, DRIVER_MODESET) &&
	    !dev_priv->opregion.header) {
		FUNC5(&dev->struct_mutex);
		FUNC3(dev);
		FUNC6(&dev->struct_mutex);
	}

	ret = FUNC0(dev);
	if (ret)
		return ret;

	FUNC2(dev);
	return 0;
}