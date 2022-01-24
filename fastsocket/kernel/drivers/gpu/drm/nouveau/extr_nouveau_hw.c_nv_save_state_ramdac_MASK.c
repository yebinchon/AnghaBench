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
typedef  scalar_t__ uint32_t ;
struct nv04_mode_state {void* sel_clk; void* pllsel; struct nv04_crtc_reg* crtc_reg; } ;
struct nv04_crtc_reg {int fp_debug_0; void** ctv_regs; void* ramdac_a34; void* ramdac_a24; void* ramdac_a20; void* ramdac_8c0; void* fp_margin_color; void* fp_debug_2; void* fp_debug_1; void* fp_control; void** dither_regs; void* dither; void** fp_horiz_regs; void** fp_vert_regs; void* tv_hsync_delay2; void* tv_hsync_delay; void* tv_hskew; void* tv_htotal; void* tv_vsync_delay; void* tv_vskew; void* tv_vtotal; void* tv_setup; void* ramdac_634; void* ramdac_630; void* ramdac_gen_ctrl; int /*<<< orphan*/  pllvals; void* nv10_cursync; } ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ card_type; int chipset; } ;

/* Variables and functions */
 void* FUNC0 (struct drm_device*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ NV_10 ; 
 scalar_t__ NV_40 ; 
 scalar_t__ NV_PRAMDAC_630 ; 
 scalar_t__ NV_PRAMDAC_634 ; 
 scalar_t__ NV_PRAMDAC_850 ; 
 scalar_t__ NV_PRAMDAC_85C ; 
 scalar_t__ NV_PRAMDAC_8C0 ; 
 scalar_t__ NV_PRAMDAC_A20 ; 
 scalar_t__ NV_PRAMDAC_A24 ; 
 scalar_t__ NV_PRAMDAC_A34 ; 
 scalar_t__ NV_PRAMDAC_CTV ; 
 scalar_t__ NV_PRAMDAC_FP_DEBUG_0 ; 
 int NV_PRAMDAC_FP_DEBUG_0_PWRDOWN_FPCLK ; 
 scalar_t__ NV_PRAMDAC_FP_DEBUG_1 ; 
 scalar_t__ NV_PRAMDAC_FP_DEBUG_2 ; 
 scalar_t__ NV_PRAMDAC_FP_MARGIN_COLOR ; 
 scalar_t__ NV_PRAMDAC_FP_TG_CONTROL ; 
 scalar_t__ NV_PRAMDAC_FP_VDISPLAY_END ; 
 scalar_t__ NV_PRAMDAC_GENERAL_CONTROL ; 
 scalar_t__ NV_PRAMDAC_PLL_COEFF_SELECT ; 
 scalar_t__ NV_PRAMDAC_SEL_CLK ; 
 scalar_t__ NV_PRAMDAC_TV_HSKEW ; 
 scalar_t__ NV_PRAMDAC_TV_HSYNC_DELAY ; 
 scalar_t__ NV_PRAMDAC_TV_HSYNC_DELAY2 ; 
 scalar_t__ NV_PRAMDAC_TV_HTOTAL ; 
 scalar_t__ NV_PRAMDAC_TV_SETUP ; 
 scalar_t__ NV_PRAMDAC_TV_VSKEW ; 
 scalar_t__ NV_PRAMDAC_TV_VSYNC_DELAY ; 
 scalar_t__ NV_PRAMDAC_TV_VTOTAL ; 
 scalar_t__ NV_RAMDAC_DITHER_NV11 ; 
 scalar_t__ NV_RAMDAC_FP_DITHER ; 
 scalar_t__ NV_RAMDAC_NV10_CURSYNC ; 
 int /*<<< orphan*/  PLL_VPLL0 ; 
 int /*<<< orphan*/  PLL_VPLL1 ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 

__attribute__((used)) static void
FUNC7(struct drm_device *dev, int head,
		     struct nv04_mode_state *state)
{
	struct nouveau_drm *drm = FUNC2(dev);
	struct nv04_crtc_reg *regp = &state->crtc_reg[head];
	int i;

	if (FUNC4(drm->device)->card_type >= NV_10)
		regp->nv10_cursync = FUNC0(dev, head, NV_RAMDAC_NV10_CURSYNC);

	FUNC3(dev, head ? PLL_VPLL1 : PLL_VPLL0, &regp->pllvals);
	state->pllsel = FUNC0(dev, 0, NV_PRAMDAC_PLL_COEFF_SELECT);
	if (FUNC6(dev))
		state->sel_clk = FUNC0(dev, 0, NV_PRAMDAC_SEL_CLK);
	if (FUNC4(drm->device)->chipset == 0x11)
		regp->dither = FUNC0(dev, head, NV_RAMDAC_DITHER_NV11);

	regp->ramdac_gen_ctrl = FUNC0(dev, head, NV_PRAMDAC_GENERAL_CONTROL);

	if (FUNC5(dev))
		regp->ramdac_630 = FUNC0(dev, head, NV_PRAMDAC_630);
	if (FUNC4(drm->device)->chipset >= 0x30)
		regp->ramdac_634 = FUNC0(dev, head, NV_PRAMDAC_634);

	regp->tv_setup = FUNC0(dev, head, NV_PRAMDAC_TV_SETUP);
	regp->tv_vtotal = FUNC0(dev, head, NV_PRAMDAC_TV_VTOTAL);
	regp->tv_vskew = FUNC0(dev, head, NV_PRAMDAC_TV_VSKEW);
	regp->tv_vsync_delay = FUNC0(dev, head, NV_PRAMDAC_TV_VSYNC_DELAY);
	regp->tv_htotal = FUNC0(dev, head, NV_PRAMDAC_TV_HTOTAL);
	regp->tv_hskew = FUNC0(dev, head, NV_PRAMDAC_TV_HSKEW);
	regp->tv_hsync_delay = FUNC0(dev, head, NV_PRAMDAC_TV_HSYNC_DELAY);
	regp->tv_hsync_delay2 = FUNC0(dev, head, NV_PRAMDAC_TV_HSYNC_DELAY2);

	for (i = 0; i < 7; i++) {
		uint32_t ramdac_reg = NV_PRAMDAC_FP_VDISPLAY_END + (i * 4);
		regp->fp_vert_regs[i] = FUNC0(dev, head, ramdac_reg);
		regp->fp_horiz_regs[i] = FUNC0(dev, head, ramdac_reg + 0x20);
	}

	if (FUNC5(dev)) {
		regp->dither = FUNC0(dev, head, NV_RAMDAC_FP_DITHER);
		for (i = 0; i < 3; i++) {
			regp->dither_regs[i] = FUNC0(dev, head, NV_PRAMDAC_850 + i * 4);
			regp->dither_regs[i + 3] = FUNC0(dev, head, NV_PRAMDAC_85C + i * 4);
		}
	}

	regp->fp_control = FUNC0(dev, head, NV_PRAMDAC_FP_TG_CONTROL);
	regp->fp_debug_0 = FUNC0(dev, head, NV_PRAMDAC_FP_DEBUG_0);
	if (!FUNC5(dev) && head == 0) {
		/* early chips don't allow access to PRAMDAC_TMDS_* without
		 * the head A FPCLK on (nv11 even locks up) */
		FUNC1(dev, 0, NV_PRAMDAC_FP_DEBUG_0, regp->fp_debug_0 &
			      ~NV_PRAMDAC_FP_DEBUG_0_PWRDOWN_FPCLK);
	}
	regp->fp_debug_1 = FUNC0(dev, head, NV_PRAMDAC_FP_DEBUG_1);
	regp->fp_debug_2 = FUNC0(dev, head, NV_PRAMDAC_FP_DEBUG_2);

	regp->fp_margin_color = FUNC0(dev, head, NV_PRAMDAC_FP_MARGIN_COLOR);

	if (FUNC5(dev))
		regp->ramdac_8c0 = FUNC0(dev, head, NV_PRAMDAC_8C0);

	if (FUNC4(drm->device)->card_type == NV_40) {
		regp->ramdac_a20 = FUNC0(dev, head, NV_PRAMDAC_A20);
		regp->ramdac_a24 = FUNC0(dev, head, NV_PRAMDAC_A24);
		regp->ramdac_a34 = FUNC0(dev, head, NV_PRAMDAC_A34);

		for (i = 0; i < 38; i++)
			regp->ctv_regs[i] = FUNC0(dev, head,
							 NV_PRAMDAC_CTV + 4*i);
	}
}