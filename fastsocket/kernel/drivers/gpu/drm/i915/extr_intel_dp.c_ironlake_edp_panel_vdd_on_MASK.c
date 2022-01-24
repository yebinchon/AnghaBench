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
struct intel_dp {int want_panel_vdd; int /*<<< orphan*/  panel_power_up_delay; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  EDP_FORCE_VDD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCH_PP_CONTROL ; 
 int /*<<< orphan*/  PCH_PP_STATUS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 struct drm_device* FUNC5 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 
 scalar_t__ FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(struct intel_dp *intel_dp)
{
	struct drm_device *dev = FUNC5(intel_dp);
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 pp;

	if (!FUNC10(intel_dp))
		return;
	FUNC0("Turn eDP VDD on\n");

	FUNC4(intel_dp->want_panel_vdd,
	     "eDP VDD already requested on\n");

	intel_dp->want_panel_vdd = true;

	if (FUNC7(intel_dp)) {
		FUNC0("eDP VDD already on\n");
		return;
	}

	if (!FUNC6(intel_dp))
		FUNC9(intel_dp);

	pp = FUNC8(dev_priv);
	pp |= EDP_FORCE_VDD;
	FUNC2(PCH_PP_CONTROL, pp);
	FUNC3(PCH_PP_CONTROL);
	FUNC0("PCH_PP_STATUS: 0x%08x PCH_PP_CONTROL: 0x%08x\n",
		      FUNC1(PCH_PP_STATUS), FUNC1(PCH_PP_CONTROL));

	/*
	 * If the panel wasn't on, delay before accessing aux channel
	 */
	if (!FUNC6(intel_dp)) {
		FUNC0("eDP was not running\n");
		FUNC11(intel_dp->panel_power_up_delay);
	}
}