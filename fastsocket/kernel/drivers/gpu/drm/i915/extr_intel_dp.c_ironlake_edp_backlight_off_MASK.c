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
typedef  int /*<<< orphan*/  u32 ;
struct intel_dp {int /*<<< orphan*/  backlight_off_delay; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EDP_BLC_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCH_PP_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct intel_dp *intel_dp)
{
	struct drm_device *dev = FUNC3(intel_dp);
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 pp;

	if (!FUNC6(intel_dp))
		return;

	FUNC4(dev);

	FUNC0("\n");
	pp = FUNC5(dev_priv);
	pp &= ~EDP_BLC_ENABLE;
	FUNC1(PCH_PP_CONTROL, pp);
	FUNC2(PCH_PP_CONTROL);
	FUNC7(intel_dp->backlight_off_delay);
}