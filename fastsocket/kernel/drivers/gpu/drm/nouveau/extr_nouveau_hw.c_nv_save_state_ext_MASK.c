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
struct nv04_mode_state {struct nv04_crtc_reg* crtc_reg; } ;
struct nv04_crtc_reg {void* fb_start; int /*<<< orphan*/ * CR58; void* crtc_cfg; void* cursor_cfg; void* crtc_eng_ctrl; void* crtc_850; void* gpio_ext; void* crtc_834; void* crtc_830; } ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;

/* Variables and functions */
 void* FUNC0 (struct drm_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int,int) ; 
 scalar_t__ NV_10 ; 
 scalar_t__ NV_20 ; 
 scalar_t__ NV_30 ; 
 scalar_t__ NV_40 ; 
 int NV_CIO_CRE_21 ; 
 int NV_CIO_CRE_42 ; 
 int NV_CIO_CRE_47 ; 
 int NV_CIO_CRE_49 ; 
 int NV_CIO_CRE_4B ; 
 int NV_CIO_CRE_53 ; 
 int NV_CIO_CRE_54 ; 
 int NV_CIO_CRE_59 ; 
 int NV_CIO_CRE_5B ; 
 int NV_CIO_CRE_85 ; 
 int NV_CIO_CRE_86 ; 
 int NV_CIO_CRE_CSB ; 
 int NV_CIO_CRE_EBR_INDEX ; 
 int NV_CIO_CRE_ENH_INDEX ; 
 int NV_CIO_CRE_FFLWM__INDEX ; 
 int NV_CIO_CRE_FF_INDEX ; 
 int NV_CIO_CRE_HCUR_ADDR0_INDEX ; 
 int NV_CIO_CRE_HCUR_ADDR1_INDEX ; 
 int NV_CIO_CRE_HCUR_ADDR2_INDEX ; 
 int NV_CIO_CRE_HEB__INDEX ; 
 int NV_CIO_CRE_ILACE__INDEX ; 
 int NV_CIO_CRE_LCD__INDEX ; 
 int NV_CIO_CRE_LSR_INDEX ; 
 int NV_CIO_CRE_PIXEL_INDEX ; 
 int NV_CIO_CRE_RPC0_INDEX ; 
 int NV_CIO_CRE_RPC1_INDEX ; 
 int NV_CIO_CRE_SCRATCH3__INDEX ; 
 int NV_CIO_CRE_SCRATCH4__INDEX ; 
 int NV_CIO_CRE_TVOUT_LATENCY ; 
 int /*<<< orphan*/  NV_PCRTC_830 ; 
 int /*<<< orphan*/  NV_PCRTC_834 ; 
 int /*<<< orphan*/  NV_PCRTC_850 ; 
 int /*<<< orphan*/  NV_PCRTC_CONFIG ; 
 int /*<<< orphan*/  NV_PCRTC_CURSOR_CONFIG ; 
 int /*<<< orphan*/  NV_PCRTC_ENGINE_CTRL ; 
 int /*<<< orphan*/  NV_PCRTC_GPIO_EXT ; 
 int /*<<< orphan*/  NV_PCRTC_START ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int,struct nv04_crtc_reg*,int) ; 

__attribute__((used)) static void
FUNC7(struct drm_device *dev, int head,
		  struct nv04_mode_state *state)
{
	struct nouveau_drm *drm = FUNC2(dev);
	struct nv04_crtc_reg *regp = &state->crtc_reg[head];
	int i;

	FUNC6(dev, head, regp, NV_CIO_CRE_LCD__INDEX);
	FUNC6(dev, head, regp, NV_CIO_CRE_RPC0_INDEX);
	FUNC6(dev, head, regp, NV_CIO_CRE_RPC1_INDEX);
	FUNC6(dev, head, regp, NV_CIO_CRE_LSR_INDEX);
	FUNC6(dev, head, regp, NV_CIO_CRE_PIXEL_INDEX);
	FUNC6(dev, head, regp, NV_CIO_CRE_HEB__INDEX);
	FUNC6(dev, head, regp, NV_CIO_CRE_ENH_INDEX);

	FUNC6(dev, head, regp, NV_CIO_CRE_FF_INDEX);
	FUNC6(dev, head, regp, NV_CIO_CRE_FFLWM__INDEX);
	FUNC6(dev, head, regp, NV_CIO_CRE_21);

	if (FUNC3(drm->device)->card_type >= NV_20)
		FUNC6(dev, head, regp, NV_CIO_CRE_47);

	if (FUNC3(drm->device)->card_type >= NV_30)
		FUNC6(dev, head, regp, 0x9f);

	FUNC6(dev, head, regp, NV_CIO_CRE_49);
	FUNC6(dev, head, regp, NV_CIO_CRE_HCUR_ADDR0_INDEX);
	FUNC6(dev, head, regp, NV_CIO_CRE_HCUR_ADDR1_INDEX);
	FUNC6(dev, head, regp, NV_CIO_CRE_HCUR_ADDR2_INDEX);
	FUNC6(dev, head, regp, NV_CIO_CRE_ILACE__INDEX);

	if (FUNC3(drm->device)->card_type >= NV_10) {
		regp->crtc_830 = FUNC0(dev, head, NV_PCRTC_830);
		regp->crtc_834 = FUNC0(dev, head, NV_PCRTC_834);

		if (FUNC3(drm->device)->card_type >= NV_30)
			regp->gpio_ext = FUNC0(dev, head, NV_PCRTC_GPIO_EXT);

		if (FUNC3(drm->device)->card_type == NV_40)
			regp->crtc_850 = FUNC0(dev, head, NV_PCRTC_850);

		if (FUNC5(dev))
			regp->crtc_eng_ctrl = FUNC0(dev, head, NV_PCRTC_ENGINE_CTRL);
		regp->cursor_cfg = FUNC0(dev, head, NV_PCRTC_CURSOR_CONFIG);
	}

	regp->crtc_cfg = FUNC0(dev, head, NV_PCRTC_CONFIG);

	FUNC6(dev, head, regp, NV_CIO_CRE_SCRATCH3__INDEX);
	FUNC6(dev, head, regp, NV_CIO_CRE_SCRATCH4__INDEX);
	if (FUNC3(drm->device)->card_type >= NV_10) {
		FUNC6(dev, head, regp, NV_CIO_CRE_EBR_INDEX);
		FUNC6(dev, head, regp, NV_CIO_CRE_CSB);
		FUNC6(dev, head, regp, NV_CIO_CRE_4B);
		FUNC6(dev, head, regp, NV_CIO_CRE_TVOUT_LATENCY);
	}
	/* NV11 and NV20 don't have this, they stop at 0x52. */
	if (FUNC4(dev)) {
		FUNC6(dev, head, regp, NV_CIO_CRE_42);
		FUNC6(dev, head, regp, NV_CIO_CRE_53);
		FUNC6(dev, head, regp, NV_CIO_CRE_54);

		for (i = 0; i < 0x10; i++)
			regp->CR58[i] = FUNC1(dev, head, i);
		FUNC6(dev, head, regp, NV_CIO_CRE_59);
		FUNC6(dev, head, regp, NV_CIO_CRE_5B);

		FUNC6(dev, head, regp, NV_CIO_CRE_85);
		FUNC6(dev, head, regp, NV_CIO_CRE_86);
	}

	regp->fb_start = FUNC0(dev, head, NV_PCRTC_START);
}