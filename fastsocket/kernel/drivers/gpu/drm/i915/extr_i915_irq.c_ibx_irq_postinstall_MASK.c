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
typedef  int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
typedef  int /*<<< orphan*/  drm_i915_private_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDEIER ; 
 int /*<<< orphan*/  SDEIIR ; 
 int /*<<< orphan*/  SDEIMR ; 
 int SDE_AUX_MASK ; 
 int SDE_AUX_MASK_CPT ; 
 int SDE_GMBUS ; 
 int SDE_GMBUS_CPT ; 
 int SDE_HOTPLUG_MASK ; 
 int SDE_HOTPLUG_MASK_CPT ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 

__attribute__((used)) static void FUNC5(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
	u32 mask;

	if (FUNC0(dev))
		mask = SDE_HOTPLUG_MASK |
		       SDE_GMBUS |
		       SDE_AUX_MASK;
	else
		mask = SDE_HOTPLUG_MASK_CPT |
		       SDE_GMBUS_CPT |
		       SDE_AUX_MASK_CPT;

	FUNC2(SDEIIR, FUNC1(SDEIIR));
	FUNC2(SDEIMR, ~mask);
	FUNC2(SDEIER, mask);
	FUNC3(SDEIER);

	FUNC4(dev);
}