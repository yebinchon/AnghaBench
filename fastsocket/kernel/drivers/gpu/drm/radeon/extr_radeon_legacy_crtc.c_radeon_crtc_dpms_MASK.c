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
struct radeon_device {int flags; } ;
struct radeon_crtc {int enabled; scalar_t__ crtc_id; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
#define  DRM_MODE_DPMS_OFF 131 
#define  DRM_MODE_DPMS_ON 130 
#define  DRM_MODE_DPMS_STANDBY 129 
#define  DRM_MODE_DPMS_SUSPEND 128 
 int RADEON_CRTC2_DISP_DIS ; 
 int RADEON_CRTC2_DISP_REQ_EN_B ; 
 int RADEON_CRTC2_EN ; 
 int /*<<< orphan*/  RADEON_CRTC2_GEN_CNTL ; 
 int RADEON_CRTC2_HSYNC_DIS ; 
 int RADEON_CRTC2_VSYNC_DIS ; 
 int RADEON_CRTC_CRT_ON ; 
 int RADEON_CRTC_DISPLAY_DIS ; 
 int RADEON_CRTC_DISP_REQ_EN_B ; 
 int RADEON_CRTC_EN ; 
 int /*<<< orphan*/  RADEON_CRTC_EXT_CNTL ; 
 int /*<<< orphan*/  RADEON_CRTC_GEN_CNTL ; 
 int RADEON_CRTC_HSYNC_DIS ; 
 int RADEON_CRTC_VSYNC_DIS ; 
 int RADEON_SINGLE_CRTC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 struct radeon_crtc* FUNC5 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc, int mode)
{
	struct radeon_crtc *radeon_crtc = FUNC5(crtc);
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	uint32_t crtc_ext_cntl = 0;
	uint32_t mask;

	if (radeon_crtc->crtc_id)
		mask = (RADEON_CRTC2_DISP_DIS |
			RADEON_CRTC2_VSYNC_DIS |
			RADEON_CRTC2_HSYNC_DIS |
			RADEON_CRTC2_DISP_REQ_EN_B);
	else
		mask = (RADEON_CRTC_DISPLAY_DIS |
			RADEON_CRTC_VSYNC_DIS |
			RADEON_CRTC_HSYNC_DIS);

	/*
	 * On all dual CRTC GPUs this bit controls the CRTC of the primary DAC.
	 * Therefore it is set in the DAC DMPS function.
	 * This is different for GPU's with a single CRTC but a primary and a
	 * TV DAC: here it controls the single CRTC no matter where it is
	 * routed. Therefore we set it here.
	 */
	if (rdev->flags & RADEON_SINGLE_CRTC)
		crtc_ext_cntl = RADEON_CRTC_CRT_ON;
	
	switch (mode) {
	case DRM_MODE_DPMS_ON:
		radeon_crtc->enabled = true;
		/* adjust pm to dpms changes BEFORE enabling crtcs */
		FUNC4(rdev);
		if (radeon_crtc->crtc_id)
			FUNC0(RADEON_CRTC2_GEN_CNTL, RADEON_CRTC2_EN, ~(RADEON_CRTC2_EN | mask));
		else {
			FUNC0(RADEON_CRTC_GEN_CNTL, RADEON_CRTC_EN, ~(RADEON_CRTC_EN |
									 RADEON_CRTC_DISP_REQ_EN_B));
			FUNC0(RADEON_CRTC_EXT_CNTL, crtc_ext_cntl, ~(mask | crtc_ext_cntl));
		}
		FUNC1(dev, radeon_crtc->crtc_id);
		FUNC3(crtc);
		break;
	case DRM_MODE_DPMS_STANDBY:
	case DRM_MODE_DPMS_SUSPEND:
	case DRM_MODE_DPMS_OFF:
		FUNC2(dev, radeon_crtc->crtc_id);
		if (radeon_crtc->crtc_id)
			FUNC0(RADEON_CRTC2_GEN_CNTL, mask, ~(RADEON_CRTC2_EN | mask));
		else {
			FUNC0(RADEON_CRTC_GEN_CNTL, RADEON_CRTC_DISP_REQ_EN_B, ~(RADEON_CRTC_EN |
										    RADEON_CRTC_DISP_REQ_EN_B));
			FUNC0(RADEON_CRTC_EXT_CNTL, mask, ~(mask | crtc_ext_cntl));
		}
		radeon_crtc->enabled = false;
		/* adjust pm to dpms changes AFTER disabling crtcs */
		FUNC4(rdev);
		break;
	}
}