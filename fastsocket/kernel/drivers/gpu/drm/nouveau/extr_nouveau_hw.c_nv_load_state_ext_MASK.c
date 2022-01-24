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
typedef  int uint32_t ;
struct nv04_mode_state {struct nv04_crtc_reg* crtc_reg; } ;
struct nv04_crtc_reg {scalar_t__ crtc_eng_ctrl; scalar_t__ cursor_cfg; scalar_t__ crtc_830; scalar_t__ crtc_834; scalar_t__ gpio_ext; scalar_t__ crtc_850; scalar_t__ crtc_cfg; scalar_t__ fb_start; int /*<<< orphan*/ * CR58; } ;
struct nouveau_timer {int dummy; } ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct nouveau_device {scalar_t__ card_type; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ NV10_PCRTC_CONFIG_START_ADDRESS_HSYNC ; 
 int FUNC0 (struct drm_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ NV_10 ; 
 scalar_t__ NV_20 ; 
 scalar_t__ NV_30 ; 
 scalar_t__ NV_40 ; 
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
 int /*<<< orphan*/  NV_PBUS_POWERCTRL_2 ; 
 int /*<<< orphan*/  NV_PCRTC_830 ; 
 int /*<<< orphan*/  NV_PCRTC_834 ; 
 int /*<<< orphan*/  NV_PCRTC_850 ; 
 int /*<<< orphan*/  NV_PCRTC_CONFIG ; 
 int /*<<< orphan*/  NV_PCRTC_CURSOR_CONFIG ; 
 int /*<<< orphan*/  NV_PCRTC_ENGINE_CTRL ; 
 int /*<<< orphan*/  NV_PCRTC_GPIO_EXT ; 
 int /*<<< orphan*/  NV_PCRTC_START ; 
 int /*<<< orphan*/  NV_PRAMDAC_900 ; 
 int /*<<< orphan*/  NV_PRMCIO_INP0__COLOR ; 
 int /*<<< orphan*/  NV_PVIDEO_INTR_EN ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  NV_PVIDEO_STOP ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct nouveau_drm* FUNC7 (struct drm_device*) ; 
 struct nouveau_timer* FUNC8 (struct nouveau_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_timer*,int,int /*<<< orphan*/ ,int,int) ; 
 struct nouveau_device* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*,int) ; 
 scalar_t__ FUNC12 (struct drm_device*) ; 
 scalar_t__ FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct nouveau_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*,int,struct nv04_crtc_reg*,int) ; 

__attribute__((used)) static void
FUNC16(struct drm_device *dev, int head,
		  struct nv04_mode_state *state)
{
	struct nouveau_drm *drm = FUNC7(dev);
	struct nouveau_device *device = FUNC10(drm->device);
	struct nouveau_timer *ptimer = FUNC8(device);
	struct nv04_crtc_reg *regp = &state->crtc_reg[head];
	uint32_t reg900;
	int i;

	if (FUNC10(drm->device)->card_type >= NV_10) {
		if (FUNC13(dev))
			/* setting ENGINE_CTRL (EC) *must* come before
			 * CIO_CRE_LCD, as writing CRE_LCD sets bits 16 & 17 in
			 * EC that should not be overwritten by writing stale EC
			 */
			FUNC1(dev, head, NV_PCRTC_ENGINE_CTRL, regp->crtc_eng_ctrl);

		FUNC14(device, NV_PVIDEO_STOP, 1);
		FUNC14(device, NV_PVIDEO_INTR_EN, 0);
		FUNC14(device, FUNC5(0), 0);
		FUNC14(device, FUNC5(1), 0);
		FUNC14(device, FUNC4(0), 0); //drm->fb_available_size - 1);
		FUNC14(device, FUNC4(1), 0); //drm->fb_available_size - 1);
		FUNC14(device, FUNC6(0), 0); //drm->fb_available_size - 1);
		FUNC14(device, FUNC6(1), 0); //drm->fb_available_size - 1);
		FUNC14(device, NV_PBUS_POWERCTRL_2, 0);

		FUNC1(dev, head, NV_PCRTC_CURSOR_CONFIG, regp->cursor_cfg);
		FUNC1(dev, head, NV_PCRTC_830, regp->crtc_830);
		FUNC1(dev, head, NV_PCRTC_834, regp->crtc_834);

		if (FUNC10(drm->device)->card_type >= NV_30)
			FUNC1(dev, head, NV_PCRTC_GPIO_EXT, regp->gpio_ext);

		if (FUNC10(drm->device)->card_type == NV_40) {
			FUNC1(dev, head, NV_PCRTC_850, regp->crtc_850);

			reg900 = FUNC0(dev, head, NV_PRAMDAC_900);
			if (regp->crtc_cfg == NV10_PCRTC_CONFIG_START_ADDRESS_HSYNC)
				FUNC2(dev, head, NV_PRAMDAC_900, reg900 | 0x10000);
			else
				FUNC2(dev, head, NV_PRAMDAC_900, reg900 & ~0x10000);
		}
	}

	FUNC1(dev, head, NV_PCRTC_CONFIG, regp->crtc_cfg);

	FUNC15(dev, head, regp, NV_CIO_CRE_RPC0_INDEX);
	FUNC15(dev, head, regp, NV_CIO_CRE_RPC1_INDEX);
	FUNC15(dev, head, regp, NV_CIO_CRE_LSR_INDEX);
	FUNC15(dev, head, regp, NV_CIO_CRE_PIXEL_INDEX);
	FUNC15(dev, head, regp, NV_CIO_CRE_LCD__INDEX);
	FUNC15(dev, head, regp, NV_CIO_CRE_HEB__INDEX);
	FUNC15(dev, head, regp, NV_CIO_CRE_ENH_INDEX);
	FUNC15(dev, head, regp, NV_CIO_CRE_FF_INDEX);
	FUNC15(dev, head, regp, NV_CIO_CRE_FFLWM__INDEX);

	if (FUNC10(drm->device)->card_type >= NV_20)
		FUNC15(dev, head, regp, NV_CIO_CRE_47);

	if (FUNC10(drm->device)->card_type >= NV_30)
		FUNC15(dev, head, regp, 0x9f);

	FUNC15(dev, head, regp, NV_CIO_CRE_49);
	FUNC15(dev, head, regp, NV_CIO_CRE_HCUR_ADDR0_INDEX);
	FUNC15(dev, head, regp, NV_CIO_CRE_HCUR_ADDR1_INDEX);
	FUNC15(dev, head, regp, NV_CIO_CRE_HCUR_ADDR2_INDEX);
	if (FUNC10(drm->device)->card_type == NV_40)
		FUNC11(dev, head);
	FUNC15(dev, head, regp, NV_CIO_CRE_ILACE__INDEX);

	FUNC15(dev, head, regp, NV_CIO_CRE_SCRATCH3__INDEX);
	FUNC15(dev, head, regp, NV_CIO_CRE_SCRATCH4__INDEX);
	if (FUNC10(drm->device)->card_type >= NV_10) {
		FUNC15(dev, head, regp, NV_CIO_CRE_EBR_INDEX);
		FUNC15(dev, head, regp, NV_CIO_CRE_CSB);
		FUNC15(dev, head, regp, NV_CIO_CRE_4B);
		FUNC15(dev, head, regp, NV_CIO_CRE_TVOUT_LATENCY);
	}
	/* NV11 and NV20 stop at 0x52. */
	if (FUNC12(dev)) {
		if (FUNC10(drm->device)->card_type == NV_10) {
			/* Not waiting for vertical retrace before modifying
			   CRE_53/CRE_54 causes lockups. */
			FUNC9(ptimer, 650000000, NV_PRMCIO_INP0__COLOR, 0x8, 0x8);
			FUNC9(ptimer, 650000000, NV_PRMCIO_INP0__COLOR, 0x8, 0x0);
		}

		FUNC15(dev, head, regp, NV_CIO_CRE_42);
		FUNC15(dev, head, regp, NV_CIO_CRE_53);
		FUNC15(dev, head, regp, NV_CIO_CRE_54);

		for (i = 0; i < 0x10; i++)
			FUNC3(dev, head, i, regp->CR58[i]);
		FUNC15(dev, head, regp, NV_CIO_CRE_59);
		FUNC15(dev, head, regp, NV_CIO_CRE_5B);

		FUNC15(dev, head, regp, NV_CIO_CRE_85);
		FUNC15(dev, head, regp, NV_CIO_CRE_86);
	}

	FUNC1(dev, head, NV_PCRTC_START, regp->fb_start);
}