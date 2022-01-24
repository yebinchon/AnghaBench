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
struct intel_pch_pll {int pll_reg; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DPLL_VCO_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int PCH_DPLL_SEL ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,...) ; 
 int _PCH_DPLL_B ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv,
			   struct intel_pch_pll *pll,
			   struct intel_crtc *crtc,
			   bool state)
{
	u32 val;
	bool cur_state;

	if (FUNC2(dev_priv->dev)) {
		FUNC0("LPT detected: skipping PCH PLL test\n");
		return;
	}

	if (FUNC4 (!pll,
		  "asserting PCH PLL %s with no PLL\n", FUNC5(state)))
		return;

	val = FUNC3(pll->pll_reg);
	cur_state = !!(val & DPLL_VCO_ENABLE);
	FUNC4(cur_state != state,
	     "PCH PLL state for reg %x assertion failure (expected %s, current %s), val=%08x\n",
	     pll->pll_reg, FUNC5(state), FUNC5(cur_state), val);

	/* Make sure the selected PLL is correctly attached to the transcoder */
	if (crtc && FUNC1(dev_priv->dev)) {
		u32 pch_dpll;

		pch_dpll = FUNC3(PCH_DPLL_SEL);
		cur_state = pll->pll_reg == _PCH_DPLL_B;
		if (!FUNC4(((pch_dpll >> (4 * crtc->pipe)) & 1) != cur_state,
			  "PLL[%d] not attached to this transcoder %d: %08x\n",
			  cur_state, crtc->pipe, pch_dpll)) {
			cur_state = !!(val >> (4*crtc->pipe + 3));
			FUNC4(cur_state != state,
			     "PLL[%d] not %s on this transcoder %d: %08x\n",
			     pll->pll_reg == _PCH_DPLL_B,
			     FUNC5(state),
			     crtc->pipe,
			     val);
		}
	}
}