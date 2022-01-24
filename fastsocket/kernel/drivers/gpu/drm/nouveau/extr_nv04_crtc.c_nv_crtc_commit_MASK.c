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
typedef  int /*<<< orphan*/  uint8_t ;
struct nouveau_crtc {int /*<<< orphan*/  index; } ;
struct drm_device {int dummy; } ;
struct drm_crtc_helper_funcs {int /*<<< orphan*/  (* dpms ) (struct drm_crtc*,int /*<<< orphan*/ ) ;} ;
struct drm_crtc {int /*<<< orphan*/  y; int /*<<< orphan*/  x; struct drm_crtc_helper_funcs* helper_private; struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  mode_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_DPMS_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_CIO_CRE_RCR ; 
 int /*<<< orphan*/  NV_CIO_CRE_RCR_ENDIAN_BIG ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct nouveau_crtc* FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_crtc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct drm_crtc_helper_funcs *funcs = crtc->helper_private;
	struct nouveau_crtc *nv_crtc = FUNC4(crtc);

	FUNC5(dev, nv_crtc->index, &FUNC7(dev)->mode_reg);
	FUNC6(crtc, crtc->x, crtc->y, NULL);

#ifdef __BIG_ENDIAN
	/* turn on LFB swapping */
	{
		uint8_t tmp = NVReadVgaCrtc(dev, nv_crtc->index, NV_CIO_CRE_RCR);
		tmp |= MASK(NV_CIO_CRE_RCR_ENDIAN_BIG);
		NVWriteVgaCrtc(dev, nv_crtc->index, NV_CIO_CRE_RCR, tmp);
	}
#endif

	funcs->dpms(crtc, DRM_MODE_DPMS_ON);
	FUNC3(dev, nv_crtc->index);
}