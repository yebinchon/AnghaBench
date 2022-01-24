#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct drm_encoder {int dummy; } ;
struct intel_encoder {int type; struct drm_encoder base; } ;
struct intel_dp {int link_bw; } ;
struct intel_ddi_plls {scalar_t__ wrpll1_refcount; scalar_t__ wrpll2_refcount; scalar_t__ spll_refcount; } ;
struct intel_crtc {int pipe; int /*<<< orphan*/  ddi_pll_sel; } ;
struct drm_i915_private {struct intel_ddi_plls ddi_plls; } ;
struct drm_crtc {TYPE_1__* dev; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
#define  DP_LINK_BW_1_62 130 
#define  DP_LINK_BW_2_7 129 
#define  DP_LINK_BW_5_4 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int INTEL_OUTPUT_ANALOG ; 
 int INTEL_OUTPUT_DISPLAYPORT ; 
 int INTEL_OUTPUT_EDP ; 
 int INTEL_OUTPUT_HDMI ; 
 int /*<<< orphan*/  PORT_CLK_SEL_LCPLL_1350 ; 
 int /*<<< orphan*/  PORT_CLK_SEL_LCPLL_2700 ; 
 int /*<<< orphan*/  PORT_CLK_SEL_LCPLL_810 ; 
 int /*<<< orphan*/  PORT_CLK_SEL_SPLL ; 
 int /*<<< orphan*/  PORT_CLK_SEL_WRPLL1 ; 
 int /*<<< orphan*/  PORT_CLK_SEL_WRPLL2 ; 
 int SPLL_CTL ; 
 int SPLL_PLL_ENABLE ; 
 int SPLL_PLL_FREQ_1350MHz ; 
 int SPLL_PLL_SSC ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int WRPLL_CTL1 ; 
 int WRPLL_CTL2 ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int WRPLL_PLL_ENABLE ; 
 int WRPLL_PLL_SELECT_LCPLL_2700 ; 
 struct intel_dp* FUNC8 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC9 (int,int*,int*,int*) ; 
 struct intel_encoder* FUNC10 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 struct intel_crtc* FUNC13 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

bool FUNC15(struct drm_crtc *crtc, int clock)
{
	struct intel_crtc *intel_crtc = FUNC13(crtc);
	struct intel_encoder *intel_encoder = FUNC10(crtc);
	struct drm_encoder *encoder = &intel_encoder->base;
	struct drm_i915_private *dev_priv = crtc->dev->dev_private;
	struct intel_ddi_plls *plls = &dev_priv->ddi_plls;
	int type = intel_encoder->type;
	enum pipe pipe = intel_crtc->pipe;
	uint32_t reg, val;

	/* TODO: reuse PLLs when possible (compare values) */

	FUNC11(crtc);

	if (type == INTEL_OUTPUT_DISPLAYPORT || type == INTEL_OUTPUT_EDP) {
		struct intel_dp *intel_dp = FUNC8(encoder);

		switch (intel_dp->link_bw) {
		case DP_LINK_BW_1_62:
			intel_crtc->ddi_pll_sel = PORT_CLK_SEL_LCPLL_810;
			break;
		case DP_LINK_BW_2_7:
			intel_crtc->ddi_pll_sel = PORT_CLK_SEL_LCPLL_1350;
			break;
		case DP_LINK_BW_5_4:
			intel_crtc->ddi_pll_sel = PORT_CLK_SEL_LCPLL_2700;
			break;
		default:
			FUNC1("Link bandwidth %d unsupported\n",
				  intel_dp->link_bw);
			return false;
		}

		/* We don't need to turn any PLL on because we'll use LCPLL. */
		return true;

	} else if (type == INTEL_OUTPUT_HDMI) {
		int p, n2, r2;

		if (plls->wrpll1_refcount == 0) {
			FUNC0("Using WRPLL 1 on pipe %c\n",
				      FUNC12(pipe));
			plls->wrpll1_refcount++;
			reg = WRPLL_CTL1;
			intel_crtc->ddi_pll_sel = PORT_CLK_SEL_WRPLL1;
		} else if (plls->wrpll2_refcount == 0) {
			FUNC0("Using WRPLL 2 on pipe %c\n",
				      FUNC12(pipe));
			plls->wrpll2_refcount++;
			reg = WRPLL_CTL2;
			intel_crtc->ddi_pll_sel = PORT_CLK_SEL_WRPLL2;
		} else {
			FUNC1("No WRPLLs available!\n");
			return false;
		}

		FUNC4(FUNC2(reg) & WRPLL_PLL_ENABLE,
		     "WRPLL already enabled\n");

		FUNC9(clock, &p, &n2, &r2);

		val = WRPLL_PLL_ENABLE | WRPLL_PLL_SELECT_LCPLL_2700 |
		      FUNC7(r2) | FUNC5(n2) |
		      FUNC6(p);

	} else if (type == INTEL_OUTPUT_ANALOG) {
		if (plls->spll_refcount == 0) {
			FUNC0("Using SPLL on pipe %c\n",
				      FUNC12(pipe));
			plls->spll_refcount++;
			reg = SPLL_CTL;
			intel_crtc->ddi_pll_sel = PORT_CLK_SEL_SPLL;
		}

		FUNC4(FUNC2(reg) & SPLL_PLL_ENABLE,
		     "SPLL already enabled\n");

		val = SPLL_PLL_ENABLE | SPLL_PLL_FREQ_1350MHz | SPLL_PLL_SSC;

	} else {
		FUNC4(1, "Invalid DDI encoder type %d\n", type);
		return false;
	}

	FUNC3(reg, val);
	FUNC14(20);

	return true;
}