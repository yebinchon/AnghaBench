#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int /*<<< orphan*/  dpio_lock; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_4__ {int n; int m1; int m2; int p1; int p2; } ;
typedef  TYPE_1__ intel_clock_t ;

/* Variables and functions */
 int DPIO_BIAS_CURRENT_CTL_SHIFT ; 
 int DPIO_CLK_BIAS_CTL_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DPIO_DATA_CHANNEL1 ; 
 int /*<<< orphan*/  DPIO_DATA_CHANNEL2 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DPIO_DRIVER_CTL_SHIFT ; 
 int DPIO_ENABLE_CALIBRATION ; 
 int /*<<< orphan*/  DPIO_FASTCLK_DISABLE ; 
 int DPIO_K_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int DPIO_M1DIV_SHIFT ; 
 int DPIO_M2DIV_MASK ; 
 int DPIO_N_SHIFT ; 
 int DPIO_P1_SHIFT ; 
 int DPIO_P2_SHIFT ; 
 int DPIO_PLL_MODESEL_SHIFT ; 
 int DPIO_PLL_REFCLK_SEL_SHIFT ; 
 int DPIO_POST_DIV_SHIFT ; 
 int DPIO_REFSEL_OVERRIDE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int DPLL_EXT_BUFFER_ENABLE_VLV ; 
 int DPLL_INTEGRATED_CLOCK_VLV ; 
 int DPLL_LOCK_VLV ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int DPLL_MD_UDI_MULTIPLIER_SHIFT ; 
 int DPLL_REFA_CLK_ENABLE_VLV ; 
 int DPLL_VCO_ENABLE ; 
 int DPLL_VGA_MODE_DIS ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_DISPLAYPORT ; 
 int /*<<< orphan*/  INTEL_OUTPUT_EDP ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 int /*<<< orphan*/  INTEL_OUTPUT_SDVO ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_crtc*,struct drm_display_mode*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct drm_display_mode*) ; 
 scalar_t__ FUNC13 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct intel_crtc* FUNC16 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 scalar_t__ FUNC18 (int,int) ; 

__attribute__((used)) static void FUNC19(struct drm_crtc *crtc,
			   struct drm_display_mode *mode,
			   struct drm_display_mode *adjusted_mode,
			   intel_clock_t *clock, intel_clock_t *reduced_clock,
			   int num_connectors)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC16(crtc);
	int pipe = intel_crtc->pipe;
	u32 dpll, mdiv, pdiv;
	u32 bestn, bestm1, bestm2, bestp1, bestp2;
	bool is_sdvo;
	u32 temp;

	FUNC14(&dev_priv->dpio_lock);

	is_sdvo = FUNC13(crtc, INTEL_OUTPUT_SDVO) ||
		FUNC13(crtc, INTEL_OUTPUT_HDMI);

	dpll = DPLL_VGA_MODE_DIS;
	dpll |= DPLL_EXT_BUFFER_ENABLE_VLV;
	dpll |= DPLL_REFA_CLK_ENABLE_VLV;
	dpll |= DPLL_INTEGRATED_CLOCK_VLV;

	FUNC8(FUNC4(pipe), dpll);
	FUNC9(FUNC4(pipe));

	bestn = clock->n;
	bestm1 = clock->m1;
	bestm2 = clock->m2;
	bestp1 = clock->p1;
	bestp2 = clock->p2;

	/*
	 * In Valleyview PLL and program lane counter registers are exposed
	 * through DPIO interface
	 */
	mdiv = ((bestm1 << DPIO_M1DIV_SHIFT) | (bestm2 & DPIO_M2DIV_MASK));
	mdiv |= ((bestp1 << DPIO_P1_SHIFT) | (bestp2 << DPIO_P2_SHIFT));
	mdiv |= ((bestn << DPIO_N_SHIFT));
	mdiv |= (1 << DPIO_POST_DIV_SHIFT);
	mdiv |= (1 << DPIO_K_SHIFT);
	mdiv |= DPIO_ENABLE_CALIBRATION;
	FUNC11(dev_priv, FUNC1(pipe), mdiv);

	FUNC11(dev_priv, FUNC0(pipe), 0x01000000);

	pdiv = (1 << DPIO_REFSEL_OVERRIDE) | (5 << DPIO_PLL_MODESEL_SHIFT) |
		(3 << DPIO_BIAS_CURRENT_CTL_SHIFT) | (1<<20) |
		(7 << DPIO_PLL_REFCLK_SEL_SHIFT) | (8 << DPIO_DRIVER_CTL_SHIFT) |
		(5 << DPIO_CLK_BIAS_CTL_SHIFT);
	FUNC11(dev_priv, FUNC3(pipe), pdiv);

	FUNC11(dev_priv, FUNC2(pipe), 0x005f003b);

	dpll |= DPLL_VCO_ENABLE;
	FUNC8(FUNC4(pipe), dpll);
	FUNC9(FUNC4(pipe));
	if (FUNC18(((FUNC7(FUNC4(pipe)) & DPLL_LOCK_VLV) == DPLL_LOCK_VLV), 1))
		FUNC6("DPLL %d failed to lock\n", pipe);

	FUNC11(dev_priv, DPIO_FASTCLK_DISABLE, 0x620);

	if (FUNC13(crtc, INTEL_OUTPUT_DISPLAYPORT))
		FUNC10(crtc, mode, adjusted_mode);

	FUNC8(FUNC4(pipe), dpll);

	/* Wait for the clocks to stabilize. */
	FUNC9(FUNC4(pipe));
	FUNC17(150);

	temp = 0;
	if (is_sdvo) {
		temp = FUNC12(adjusted_mode);
		if (temp > 1)
			temp = (temp - 1) << DPLL_MD_UDI_MULTIPLIER_SHIFT;
		else
			temp = 0;
	}
	FUNC8(FUNC5(pipe), temp);
	FUNC9(FUNC5(pipe));

	/* Now program lane control registers */
	if(FUNC13(crtc, INTEL_OUTPUT_DISPLAYPORT)
			|| FUNC13(crtc, INTEL_OUTPUT_HDMI))
	{
		temp = 0x1000C4;
		if(pipe == 1)
			temp |= (1 << 21);
		FUNC11(dev_priv, DPIO_DATA_CHANNEL1, temp);
	}
	if(FUNC13(crtc,INTEL_OUTPUT_EDP))
	{
		temp = 0x1000C4;
		if(pipe == 1)
			temp |= (1 << 21);
		FUNC11(dev_priv, DPIO_DATA_CHANNEL2, temp);
	}

	FUNC15(&dev_priv->dpio_lock);
}