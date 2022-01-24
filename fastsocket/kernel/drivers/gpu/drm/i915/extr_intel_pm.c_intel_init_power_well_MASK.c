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
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSW_PWR_WELL_BIOS ; 
 int HSW_PWR_WELL_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int) ; 

void FUNC4(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	if (!FUNC2(dev))
		return;

	/* For now, we need the power well to be always enabled. */
	FUNC3(dev, true);

	/* We're taking over the BIOS, so clear any requests made by it since
	 * the driver is in charge now. */
	if (FUNC0(HSW_PWR_WELL_BIOS) & HSW_PWR_WELL_ENABLE)
		FUNC1(HSW_PWR_WELL_BIOS, 0);
}