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
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 scalar_t__ FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct drm_device * dev)
{
	drm_i915_private_t *dev_priv = dev->dev_private;

	/* On gen6+ we refuse to init without kms enabled, but then the drm core
	 * goes right around and calls lastclose. Check for this and don't clean
	 * up anything. */
	if (!dev_priv)
		return;

	if (FUNC0(dev, DRIVER_MODESET)) {
		FUNC3(dev);
		FUNC4();
		return;
	}

	FUNC2(dev);

	FUNC1(dev);
}