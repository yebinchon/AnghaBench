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
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct nouveau_crtc {int /*<<< orphan*/  index; } ;
struct drm_device {int dummy; } ;
struct drm_crtc_helper_funcs {int /*<<< orphan*/  (* dpms ) (struct drm_crtc*,int /*<<< orphan*/ ) ;} ;
struct drm_crtc {struct drm_crtc_helper_funcs* helper_private; struct drm_device* dev; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ NV_40 ; 
 int /*<<< orphan*/  NV_PCRTC_CONFIG ; 
 int /*<<< orphan*/  NV_PCRTC_CONFIG_START_ADDRESS_NON_VGA ; 
 int /*<<< orphan*/  NV_PRAMDAC_900 ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct nouveau_crtc* FUNC6 (struct drm_crtc*) ; 
 struct nouveau_drm* FUNC7 (struct drm_device*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_crtc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct nouveau_drm *drm = FUNC7(dev);
	struct nouveau_crtc *nv_crtc = FUNC6(crtc);
	struct drm_crtc_helper_funcs *funcs = crtc->helper_private;

	if (FUNC9(dev))
		FUNC2(dev, nv_crtc->index);

	FUNC5(dev, nv_crtc->index);
	funcs->dpms(crtc, DRM_MODE_DPMS_OFF);

	FUNC0(dev, nv_crtc->index, true);

	/* Some more preparation. */
	FUNC3(dev, nv_crtc->index, NV_PCRTC_CONFIG, NV_PCRTC_CONFIG_START_ADDRESS_NON_VGA);
	if (FUNC8(drm->device)->card_type == NV_40) {
		uint32_t reg900 = FUNC1(dev, nv_crtc->index, NV_PRAMDAC_900);
		FUNC4(dev, nv_crtc->index, NV_PRAMDAC_900, reg900 & ~0x10000);
	}
}