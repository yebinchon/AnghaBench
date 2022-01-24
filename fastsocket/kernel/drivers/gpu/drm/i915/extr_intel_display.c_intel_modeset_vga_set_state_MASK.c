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
typedef  int /*<<< orphan*/  u16 ;
struct drm_i915_private {int /*<<< orphan*/  bridge_dev; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_GMCH_CTRL ; 
 int /*<<< orphan*/  INTEL_GMCH_VGA_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct drm_device *dev, bool state)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u16 gmch_ctrl;

	FUNC0(dev_priv->bridge_dev, INTEL_GMCH_CTRL, &gmch_ctrl);
	if (state)
		gmch_ctrl &= ~INTEL_GMCH_VGA_DISABLE;
	else
		gmch_ctrl |= INTEL_GMCH_VGA_DISABLE;
	FUNC1(dev_priv->bridge_dev, INTEL_GMCH_CTRL, gmch_ctrl);
	return 0;
}