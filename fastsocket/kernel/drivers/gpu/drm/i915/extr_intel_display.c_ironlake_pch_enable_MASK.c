#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_crtc {int pipe; TYPE_2__* pch_pll; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* fdi_link_train ) (struct drm_crtc*) ;} ;
struct drm_i915_private {TYPE_1__ display; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_6__ {int flags; } ;
struct drm_crtc {TYPE_3__ mode; struct drm_device* dev; } ;
struct TYPE_5__ {scalar_t__ pll_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int DRM_MODE_FLAG_PHSYNC ; 
 int DRM_MODE_FLAG_PVSYNC ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_DISPLAYPORT ; 
 int /*<<< orphan*/  INTEL_OUTPUT_EDP ; 
 int PCH_DPLL_SEL ; 
#define  PCH_DP_B 130 
#define  PCH_DP_C 129 
#define  PCH_DP_D 128 
 int FUNC8 (int) ; 
 int PIPECONF_BPC_MASK ; 
 int FUNC9 (int) ; 
 int TRANSA_DPLLB_SEL ; 
 int TRANSA_DPLL_ENABLE ; 
 int TRANSB_DPLLB_SEL ; 
 int TRANSB_DPLL_ENABLE ; 
 int TRANSC_DPLLB_SEL ; 
 int TRANSC_DPLL_ENABLE ; 
 int TRANS_DP_BPC_MASK ; 
 int FUNC10 (int) ; 
 int TRANS_DP_ENH_FRAMING ; 
 int TRANS_DP_HSYNC_ACTIVE_HIGH ; 
 int TRANS_DP_OUTPUT_ENABLE ; 
 int TRANS_DP_PORT_SEL_B ; 
 int TRANS_DP_PORT_SEL_C ; 
 int TRANS_DP_PORT_SEL_D ; 
 int TRANS_DP_PORT_SEL_MASK ; 
 int TRANS_DP_SYNC_MASK ; 
 int TRANS_DP_VSYNC_ACTIVE_HIGH ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int TU_SIZE_MASK ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int) ; 
 scalar_t__ _PCH_DPLL_B ; 
 int /*<<< orphan*/  FUNC22 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct drm_crtc*) ; 
 scalar_t__ FUNC25 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC27 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC28 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct drm_crtc*) ; 
 struct intel_crtc* FUNC30 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC31(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC30(crtc);
	int pipe = intel_crtc->pipe;
	u32 reg, temp;

	FUNC23(dev_priv, pipe);

	/* Write the TU size bits before fdi link training, so that error
	 * detection works. */
	FUNC7(FUNC1(pipe),
		   FUNC6(FUNC9(pipe)) & TU_SIZE_MASK);

	/* For PCH output, training FDI link */
	dev_priv->display.fdi_link_train(crtc);

	/* XXX: pch pll's can be enabled any time before we enable the PCH
	 * transcoder, and we actually should do this to not upset any PCH
	 * transcoder that already use the clock when we share it.
	 *
	 * Note that enable_pch_pll tries to do the right thing, but get_pch_pll
	 * unconditionally resets the pll - we need that to have the right LVDS
	 * enable sequence. */
	FUNC27(intel_crtc);

	if (FUNC2(dev)) {
		u32 sel;

		temp = FUNC6(PCH_DPLL_SEL);
		switch (pipe) {
		default:
		case 0:
			temp |= TRANSA_DPLL_ENABLE;
			sel = TRANSA_DPLLB_SEL;
			break;
		case 1:
			temp |= TRANSB_DPLL_ENABLE;
			sel = TRANSB_DPLLB_SEL;
			break;
		case 2:
			temp |= TRANSC_DPLL_ENABLE;
			sel = TRANSC_DPLLB_SEL;
			break;
		}
		if (intel_crtc->pch_pll->pll_reg == _PCH_DPLL_B)
			temp |= sel;
		else
			temp &= ~sel;
		FUNC7(PCH_DPLL_SEL, temp);
	}

	/* set transcoder timing, panel must allow it */
	FUNC22(dev_priv, pipe);
	FUNC7(FUNC13(pipe), FUNC6(FUNC5(pipe)));
	FUNC7(FUNC11(pipe), FUNC6(FUNC3(pipe)));
	FUNC7(FUNC12(pipe),  FUNC6(FUNC4(pipe)));

	FUNC7(FUNC17(pipe), FUNC6(FUNC21(pipe)));
	FUNC7(FUNC14(pipe), FUNC6(FUNC18(pipe)));
	FUNC7(FUNC15(pipe),  FUNC6(FUNC19(pipe)));
	FUNC7(FUNC16(pipe),  FUNC6(FUNC20(pipe)));

	FUNC24(crtc);

	/* For PCH DP, enable TRANS_DP_CTL */
	if (FUNC2(dev) &&
	    (FUNC25(crtc, INTEL_OUTPUT_DISPLAYPORT) ||
	     FUNC25(crtc, INTEL_OUTPUT_EDP))) {
		u32 bpc = (FUNC6(FUNC8(pipe)) & PIPECONF_BPC_MASK) >> 5;
		reg = FUNC10(pipe);
		temp = FUNC6(reg);
		temp &= ~(TRANS_DP_PORT_SEL_MASK |
			  TRANS_DP_SYNC_MASK |
			  TRANS_DP_BPC_MASK);
		temp |= (TRANS_DP_OUTPUT_ENABLE |
			 TRANS_DP_ENH_FRAMING);
		temp |= bpc << 9; /* same format but at 11:9 */

		if (crtc->mode.flags & DRM_MODE_FLAG_PHSYNC)
			temp |= TRANS_DP_HSYNC_ACTIVE_HIGH;
		if (crtc->mode.flags & DRM_MODE_FLAG_PVSYNC)
			temp |= TRANS_DP_VSYNC_ACTIVE_HIGH;

		switch (FUNC26(crtc)) {
		case PCH_DP_B:
			temp |= TRANS_DP_PORT_SEL_B;
			break;
		case PCH_DP_C:
			temp |= TRANS_DP_PORT_SEL_C;
			break;
		case PCH_DP_D:
			temp |= TRANS_DP_PORT_SEL_D;
			break;
		default:
			FUNC0();
		}

		FUNC7(reg, temp);
	}

	FUNC28(dev_priv, pipe);
}