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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct drm_i915_private*) ; 
 unsigned long FUNC1 (struct drm_i915_private*) ; 
 struct drm_i915_private* i915_mch_dev ; 
 int /*<<< orphan*/  mchdev_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

unsigned long FUNC4(void)
{
	struct drm_i915_private *dev_priv;
	unsigned long chipset_val, graphics_val, ret = 0;

	FUNC2(&mchdev_lock);
	if (!i915_mch_dev)
		goto out_unlock;
	dev_priv = i915_mch_dev;

	chipset_val = FUNC0(dev_priv);
	graphics_val = FUNC1(dev_priv);

	ret = chipset_val + graphics_val;

out_unlock:
	FUNC3(&mchdev_lock);

	return ret;
}