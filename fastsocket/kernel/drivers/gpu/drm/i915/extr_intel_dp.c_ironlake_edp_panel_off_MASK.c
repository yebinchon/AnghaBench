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
struct intel_dp {int want_panel_vdd; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EDP_BLC_ENABLE ; 
 int EDP_FORCE_VDD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int PANEL_POWER_RESET ; 
 int /*<<< orphan*/  PCH_PP_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int POWER_TARGET_ON ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 struct drm_device* FUNC4 (struct intel_dp*) ; 
 int FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 

void FUNC8(struct intel_dp *intel_dp)
{
	struct drm_device *dev = FUNC4(intel_dp);
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 pp;

	if (!FUNC7(intel_dp))
		return;

	FUNC0("Turn eDP power off\n");

	FUNC3(!intel_dp->want_panel_vdd, "Need VDD to turn off panel\n");

	pp = FUNC5(dev_priv);
	/* We need to switch off panel power _and_ force vdd, for otherwise some
	 * panels get very unhappy and cease to work. */
	pp &= ~(POWER_TARGET_ON | EDP_FORCE_VDD | PANEL_POWER_RESET | EDP_BLC_ENABLE);
	FUNC1(PCH_PP_CONTROL, pp);
	FUNC2(PCH_PP_CONTROL);

	intel_dp->want_panel_vdd = false;

	FUNC6(intel_dp);
}