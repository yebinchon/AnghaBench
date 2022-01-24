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
struct intel_crtc {int fdi_lanes; int ddi_pll_sel; } ;
struct drm_i915_private {int fdi_rx_config; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int DDI_BUF_CTL_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int DP_TP_CTL_ENABLE ; 
 int DP_TP_CTL_ENHANCED_FRAME_ENABLE ; 
 int DP_TP_CTL_FDI_AUTOTRAIN ; 
 int DP_TP_CTL_LINK_TRAIN_MASK ; 
 int DP_TP_CTL_LINK_TRAIN_NORMAL ; 
 int DP_TP_CTL_LINK_TRAIN_PAT1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int DP_TP_STATUS_AUTOTRAIN_DONE ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FDI_LINK_TRAIN_AUTO ; 
 int FDI_PCDCLK ; 
 int FDI_RX_ENABLE ; 
 int FDI_RX_ENHANCE_FRAME_ENABLE ; 
 int FDI_RX_FDI_DELAY_90 ; 
 int FDI_RX_PLL_ENABLE ; 
 int FDI_RX_PWRDN_LANE0_MASK ; 
 int FUNC6 (int) ; 
 int FDI_RX_PWRDN_LANE1_MASK ; 
 int FUNC7 (int) ; 
 int FDI_RX_TP1_TO_TP2_48 ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_E ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  _FDI_RXA_CTL ; 
 int /*<<< orphan*/  _FDI_RXA_MISC ; 
 int /*<<< orphan*/  _FDI_RXA_TUSIZE1 ; 
 int* hsw_ddi_buf_ctl_values ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC14 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

void FUNC16(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC14(crtc);
	u32 temp, i, rx_ctl_val;

	/* Set the FDI_RX_MISC pwrdn lanes and the 2 workarounds listed at the
	 * mode set "sequence for CRT port" document:
	 * - TP1 to TP2 time with the default value
	 * - FDI delay to 90h
	 */
	FUNC9(_FDI_RXA_MISC, FUNC7(2) |
				  FUNC6(2) |
				  FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);

	/* Enable the PCH Receiver FDI PLL */
	rx_ctl_val = dev_priv->fdi_rx_config | FDI_RX_ENHANCE_FRAME_ENABLE |
		     FDI_RX_PLL_ENABLE | ((intel_crtc->fdi_lanes - 1) << 19);
	FUNC9(_FDI_RXA_CTL, rx_ctl_val);
	FUNC11(_FDI_RXA_CTL);
	FUNC15(220);

	/* Switch from Rawclk to PCDclk */
	rx_ctl_val |= FDI_PCDCLK;
	FUNC9(_FDI_RXA_CTL, rx_ctl_val);

	/* Configure Port Clock Select */
	FUNC9(FUNC10(PORT_E), intel_crtc->ddi_pll_sel);

	/* Start the training iterating through available voltages and emphasis,
	 * testing each value twice. */
	for (i = 0; i < FUNC0(hsw_ddi_buf_ctl_values) * 2; i++) {
		/* Configure DP_TP_CTL with auto-training */
		FUNC9(FUNC2(PORT_E),
					DP_TP_CTL_FDI_AUTOTRAIN |
					DP_TP_CTL_ENHANCED_FRAME_ENABLE |
					DP_TP_CTL_LINK_TRAIN_PAT1 |
					DP_TP_CTL_ENABLE);

		/* Configure and enable DDI_BUF_CTL for DDI E with next voltage.
		 * DDI E does not support port reversal, the functionality is
		 * achieved on the PCH side in FDI_RX_CTL, so no need to set the
		 * port reversal bit */
		FUNC9(FUNC1(PORT_E),
			   DDI_BUF_CTL_ENABLE |
			   ((intel_crtc->fdi_lanes - 1) << 1) |
			   hsw_ddi_buf_ctl_values[i / 2]);
		FUNC11(FUNC1(PORT_E));

		FUNC15(600);

		/* Program PCH FDI Receiver TU */
		FUNC9(_FDI_RXA_TUSIZE1, FUNC12(64));

		/* Enable PCH FDI Receiver with auto-training */
		rx_ctl_val |= FDI_RX_ENABLE | FDI_LINK_TRAIN_AUTO;
		FUNC9(_FDI_RXA_CTL, rx_ctl_val);
		FUNC11(_FDI_RXA_CTL);

		/* Wait for FDI receiver lane calibration */
		FUNC15(30);

		/* Unset FDI_RX_MISC pwrdn lanes */
		temp = FUNC8(_FDI_RXA_MISC);
		temp &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
		FUNC9(_FDI_RXA_MISC, temp);
		FUNC11(_FDI_RXA_MISC);

		/* Wait for FDI auto training time */
		FUNC15(5);

		temp = FUNC8(FUNC3(PORT_E));
		if (temp & DP_TP_STATUS_AUTOTRAIN_DONE) {
			FUNC4("FDI link training done on step %d\n", i);

			/* Enable normal pixel sending for FDI */
			FUNC9(FUNC2(PORT_E),
				   DP_TP_CTL_FDI_AUTOTRAIN |
				   DP_TP_CTL_LINK_TRAIN_NORMAL |
				   DP_TP_CTL_ENHANCED_FRAME_ENABLE |
				   DP_TP_CTL_ENABLE);

			return;
		}

		temp = FUNC8(FUNC1(PORT_E));
		temp &= ~DDI_BUF_CTL_ENABLE;
		FUNC9(FUNC1(PORT_E), temp);
		FUNC11(FUNC1(PORT_E));

		/* Disable DP_TP_CTL and FDI_RX_CTL and retry */
		temp = FUNC8(FUNC2(PORT_E));
		temp &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
		temp |= DP_TP_CTL_LINK_TRAIN_PAT1;
		FUNC9(FUNC2(PORT_E), temp);
		FUNC11(FUNC2(PORT_E));

		FUNC13(dev_priv, PORT_E);

		rx_ctl_val &= ~FDI_RX_ENABLE;
		FUNC9(_FDI_RXA_CTL, rx_ctl_val);
		FUNC11(_FDI_RXA_CTL);

		/* Reset FDI_RX_MISC pwrdn lanes */
		temp = FUNC8(_FDI_RXA_MISC);
		temp &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
		temp |= FUNC7(2) | FUNC6(2);
		FUNC9(_FDI_RXA_MISC, temp);
		FUNC11(_FDI_RXA_MISC);
	}

	FUNC5("FDI link training failed!\n");
}