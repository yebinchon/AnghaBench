#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct nv04_mode_state {int pllsel; } ;
struct nouveau_encoder {TYPE_1__* dcb; } ;
struct nouveau_drm {int dummy; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* dpms ) (struct drm_encoder*,int) ;} ;
struct TYPE_7__ {int index; } ;
struct TYPE_6__ {struct nv04_mode_state mode_reg; } ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int DRM_MODE_DPMS_ON ; 
 int FUNC0 (struct drm_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NV_CIO_CRE_RPC1_INDEX ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_drm*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_PRAMDAC_PLL_COEFF_SELECT ; 
 int PLLSEL_TV_CRTC1_MASK ; 
 int PLLSEL_TV_CRTC2_MASK ; 
 TYPE_4__* FUNC4 (struct drm_encoder*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC6 (struct drm_device*) ; 
 struct nouveau_encoder* FUNC7 (struct drm_encoder*) ; 
 TYPE_2__* FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_encoder*,int) ; 

__attribute__((used)) static void FUNC10(struct drm_encoder *encoder, int mode)
{
	struct drm_device *dev = encoder->dev;
	struct nouveau_drm *drm = FUNC6(dev);
	struct nouveau_encoder *nv_encoder = FUNC7(encoder);
	struct nv04_mode_state *state = &FUNC8(dev)->mode_reg;
	uint8_t crtc1A;

	FUNC3(drm, "Setting dpms mode %d on TV encoder (output %d)\n",
		 mode, nv_encoder->dcb->index);

	state->pllsel &= ~(PLLSEL_TV_CRTC1_MASK | PLLSEL_TV_CRTC2_MASK);

	if (mode == DRM_MODE_DPMS_ON) {
		int head = FUNC5(encoder->crtc)->index;
		crtc1A = FUNC0(dev, head, NV_CIO_CRE_RPC1_INDEX);

		state->pllsel |= head ? PLLSEL_TV_CRTC2_MASK :
					PLLSEL_TV_CRTC1_MASK;

		/* Inhibit hsync */
		crtc1A |= 0x80;

		FUNC2(dev, head, NV_CIO_CRE_RPC1_INDEX, crtc1A);
	}

	FUNC1(dev, 0, NV_PRAMDAC_PLL_COEFF_SELECT, state->pllsel);

	FUNC4(encoder)->dpms(encoder, mode);
}