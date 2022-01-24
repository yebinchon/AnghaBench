#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct nv04_crtc_reg {int* CRTC; int fb_start; int /*<<< orphan*/  ramdac_gen_ctrl; } ;
struct nouveau_framebuffer {TYPE_8__* nvbo; } ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct TYPE_13__ {int offset; } ;
struct TYPE_12__ {scalar_t__ depth; } ;
struct nouveau_crtc {size_t index; TYPE_4__ fb; TYPE_3__ lut; } ;
struct drm_framebuffer {scalar_t__ depth; int* pitches; int bits_per_pixel; } ;
struct drm_device {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  clock; } ;
struct drm_crtc {TYPE_5__ mode; struct drm_framebuffer* fb; struct drm_device* dev; } ;
struct TYPE_11__ {int offset; } ;
struct TYPE_17__ {TYPE_2__ bo; } ;
struct TYPE_10__ {struct nv04_crtc_reg* crtc_reg; } ;
struct TYPE_16__ {TYPE_1__ mode_reg; } ;
struct TYPE_15__ {scalar_t__ card_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NV_20 ; 
 size_t NV_CIO_CRE_42 ; 
 int /*<<< orphan*/  NV_CIO_CRE_42_OFFSET_11 ; 
 size_t NV_CIO_CRE_47 ; 
 size_t NV_CIO_CRE_FFLWM__INDEX ; 
 size_t NV_CIO_CRE_FF_INDEX ; 
 size_t NV_CIO_CRE_PIXEL_INDEX ; 
 size_t NV_CIO_CRE_RPC0_INDEX ; 
 int /*<<< orphan*/  NV_CIO_CRE_RPC0_OFFSET_10_8 ; 
 size_t NV_CIO_CR_OFFSET_INDEX ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_drm*,char*,...) ; 
 int /*<<< orphan*/  NV_PRAMDAC_GENERAL_CONTROL ; 
 int /*<<< orphan*/  NV_PRAMDAC_GENERAL_CONTROL_ALT_MODE_SEL ; 
 int /*<<< orphan*/  TTM_PL_FLAG_VRAM ; 
 void* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,struct nv04_crtc_reg*,size_t) ; 
 int FUNC4 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int /*<<< orphan*/ ,int,int*,int*) ; 
 struct nouveau_crtc* FUNC7 (struct drm_crtc*) ; 
 struct nouveau_drm* FUNC8 (struct drm_device*) ; 
 struct nouveau_framebuffer* FUNC9 (struct drm_framebuffer*) ; 
 TYPE_7__* FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_crtc*) ; 
 TYPE_6__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*,size_t,int) ; 

__attribute__((used)) static int
FUNC14(struct drm_crtc *crtc,
			   struct drm_framebuffer *passed_fb,
			   int x, int y, bool atomic)
{
	struct nouveau_crtc *nv_crtc = FUNC7(crtc);
	struct drm_device *dev = crtc->dev;
	struct nouveau_drm *drm = FUNC8(dev);
	struct nv04_crtc_reg *regp = &FUNC10(dev)->mode_reg.crtc_reg[nv_crtc->index];
	struct drm_framebuffer *drm_fb;
	struct nouveau_framebuffer *fb;
	int arb_burst, arb_lwm;
	int ret;

	FUNC1(drm, "index %d\n", nv_crtc->index);

	/* no fb bound */
	if (!atomic && !crtc->fb) {
		FUNC1(drm, "No FB bound\n");
		return 0;
	}


	/* If atomic, we want to switch to the fb we were passed, so
	 * now we update pointers to do that.  (We don't pin; just
	 * assume we're already pinned and update the base address.)
	 */
	if (atomic) {
		drm_fb = passed_fb;
		fb = FUNC9(passed_fb);
	} else {
		drm_fb = crtc->fb;
		fb = FUNC9(crtc->fb);
		/* If not atomic, we can go ahead and pin, and unpin the
		 * old fb we were passed.
		 */
		ret = FUNC4(fb->nvbo, TTM_PL_FLAG_VRAM);
		if (ret)
			return ret;

		if (passed_fb) {
			struct nouveau_framebuffer *ofb = FUNC9(passed_fb);
			FUNC5(ofb->nvbo);
		}
	}

	nv_crtc->fb.offset = fb->nvbo->bo.offset;

	if (nv_crtc->lut.depth != drm_fb->depth) {
		nv_crtc->lut.depth = drm_fb->depth;
		FUNC11(crtc);
	}

	/* Update the framebuffer format. */
	regp->CRTC[NV_CIO_CRE_PIXEL_INDEX] &= ~3;
	regp->CRTC[NV_CIO_CRE_PIXEL_INDEX] |= (crtc->fb->depth + 1) / 8;
	regp->ramdac_gen_ctrl &= ~NV_PRAMDAC_GENERAL_CONTROL_ALT_MODE_SEL;
	if (crtc->fb->depth == 16)
		regp->ramdac_gen_ctrl |= NV_PRAMDAC_GENERAL_CONTROL_ALT_MODE_SEL;
	FUNC3(crtc, regp, NV_CIO_CRE_PIXEL_INDEX);
	FUNC0(dev, nv_crtc->index, NV_PRAMDAC_GENERAL_CONTROL,
		      regp->ramdac_gen_ctrl);

	regp->CRTC[NV_CIO_CR_OFFSET_INDEX] = drm_fb->pitches[0] >> 3;
	regp->CRTC[NV_CIO_CRE_RPC0_INDEX] =
		FUNC2(drm_fb->pitches[0] >> 3, 8, NV_CIO_CRE_RPC0_OFFSET_10_8);
	regp->CRTC[NV_CIO_CRE_42] =
		FUNC2(drm_fb->pitches[0] / 8, 11, NV_CIO_CRE_42_OFFSET_11);
	FUNC3(crtc, regp, NV_CIO_CRE_RPC0_INDEX);
	FUNC3(crtc, regp, NV_CIO_CR_OFFSET_INDEX);
	FUNC3(crtc, regp, NV_CIO_CRE_42);

	/* Update the framebuffer location. */
	regp->fb_start = nv_crtc->fb.offset & ~3;
	regp->fb_start += (y * drm_fb->pitches[0]) + (x * drm_fb->bits_per_pixel / 8);
	FUNC13(dev, nv_crtc->index, regp->fb_start);

	/* Update the arbitration parameters. */
	FUNC6(dev, crtc->mode.clock, drm_fb->bits_per_pixel,
			 &arb_burst, &arb_lwm);

	regp->CRTC[NV_CIO_CRE_FF_INDEX] = arb_burst;
	regp->CRTC[NV_CIO_CRE_FFLWM__INDEX] = arb_lwm & 0xff;
	FUNC3(crtc, regp, NV_CIO_CRE_FF_INDEX);
	FUNC3(crtc, regp, NV_CIO_CRE_FFLWM__INDEX);

	if (FUNC12(drm->device)->card_type >= NV_20) {
		regp->CRTC[NV_CIO_CRE_47] = arb_lwm >> 8;
		FUNC3(crtc, regp, NV_CIO_CRE_47);
	}

	return 0;
}