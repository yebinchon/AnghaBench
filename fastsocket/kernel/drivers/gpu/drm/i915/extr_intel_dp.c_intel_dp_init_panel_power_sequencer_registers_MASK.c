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
struct intel_dp {int dummy; } ;
struct edp_power_seq {int t1_t3; int t8; int t9; int t10; int /*<<< orphan*/  t11_t12; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int PANEL_LIGHT_OFF_DELAY_SHIFT ; 
 int PANEL_LIGHT_ON_DELAY_SHIFT ; 
 int PANEL_POWER_CYCLE_DELAY_SHIFT ; 
 int PANEL_POWER_DOWN_DELAY_SHIFT ; 
 int PANEL_POWER_PORT_DP_A ; 
 int PANEL_POWER_PORT_DP_D ; 
 int PANEL_POWER_UP_DELAY_SHIFT ; 
 int /*<<< orphan*/  PCH_PP_DIVISOR ; 
 int /*<<< orphan*/  PCH_PP_OFF_DELAYS ; 
 int /*<<< orphan*/  PCH_PP_ON_DELAYS ; 
 int PP_REFERENCE_DIVIDER_SHIFT ; 
 int FUNC6 (struct drm_device*) ; 
 scalar_t__ FUNC7 (struct intel_dp*) ; 

__attribute__((used)) static void
FUNC8(struct drm_device *dev,
					      struct intel_dp *intel_dp,
					      struct edp_power_seq *seq)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 pp_on, pp_off, pp_div;

	/* And finally store the new values in the power sequencer. */
	pp_on = (seq->t1_t3 << PANEL_POWER_UP_DELAY_SHIFT) |
		(seq->t8 << PANEL_LIGHT_ON_DELAY_SHIFT);
	pp_off = (seq->t9 << PANEL_LIGHT_OFF_DELAY_SHIFT) |
		 (seq->t10 << PANEL_POWER_DOWN_DELAY_SHIFT);
	/* Compute the divisor for the pp clock, simply match the Bspec
	 * formula. */
	pp_div = ((100 * FUNC6(dev))/2 - 1)
			<< PP_REFERENCE_DIVIDER_SHIFT;
	pp_div |= (FUNC0(seq->t11_t12, 1000)
			<< PANEL_POWER_CYCLE_DELAY_SHIFT);

	/* Haswell doesn't have any port selection bits for the panel
	 * power sequencer any more. */
	if (FUNC3(dev) || FUNC2(dev)) {
		if (FUNC7(intel_dp))
			pp_on |= PANEL_POWER_PORT_DP_A;
		else
			pp_on |= PANEL_POWER_PORT_DP_D;
	}

	FUNC5(PCH_PP_ON_DELAYS, pp_on);
	FUNC5(PCH_PP_OFF_DELAYS, pp_off);
	FUNC5(PCH_PP_DIVISOR, pp_div);

	FUNC1("panel power sequencer register settings: PP_ON %#x, PP_OFF %#x, PP_DIV %#x\n",
		      FUNC4(PCH_PP_ON_DELAYS),
		      FUNC4(PCH_PP_OFF_DELAYS),
		      FUNC4(PCH_PP_DIVISOR));
}