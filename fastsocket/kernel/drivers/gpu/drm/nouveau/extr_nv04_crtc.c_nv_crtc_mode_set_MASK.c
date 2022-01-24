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
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct nouveau_crtc {int /*<<< orphan*/  index; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int /*<<< orphan*/  clock; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  sel_clk; } ;
struct TYPE_6__ {TYPE_1__ mode_reg; } ;
struct TYPE_5__ {scalar_t__ card_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NV_40 ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_drm*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_PRAMDAC_SEL_CLK ; 
 int /*<<< orphan*/  FUNC2 (struct drm_display_mode*) ; 
 struct nouveau_crtc* FUNC3 (struct drm_crtc*) ; 
 struct nouveau_drm* FUNC4 (struct drm_device*) ; 
 TYPE_3__* FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*,struct drm_display_mode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_crtc*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_crtc*,struct drm_display_mode*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC11(struct drm_crtc *crtc, struct drm_display_mode *mode,
		 struct drm_display_mode *adjusted_mode,
		 int x, int y, struct drm_framebuffer *old_fb)
{
	struct drm_device *dev = crtc->dev;
	struct nouveau_crtc *nv_crtc = FUNC3(crtc);
	struct nouveau_drm *drm = FUNC4(dev);

	FUNC1(drm, "CTRC mode on CRTC %d:\n", nv_crtc->index);
	FUNC2(adjusted_mode);

	/* unlock must come after turning off FP_TG_CONTROL in output_prepare */
	FUNC10(dev, nv_crtc->index, -1);

	FUNC8(crtc, adjusted_mode);
	/* calculated in nv04_dfp_prepare, nv40 needs it written before calculating PLLs */
	if (FUNC9(drm->device)->card_type == NV_40)
		FUNC0(dev, 0, NV_PRAMDAC_SEL_CLK, FUNC5(dev)->mode_reg.sel_clk);
	FUNC7(crtc, adjusted_mode);
	FUNC6(crtc, mode, adjusted_mode->clock);
	return 0;
}