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
struct radeon_encoder {int active_device; } ;
struct radeon_device {scalar_t__ family; int flags; scalar_t__ is_atom_bios; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int ATOM_DEVICE_TV_SUPPORT ; 
 scalar_t__ CHIP_R200 ; 
 scalar_t__ CHIP_R420 ; 
 scalar_t__ CHIP_R423 ; 
 scalar_t__ CHIP_RV410 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  DRM_MODE_DPMS_OFF 131 
#define  DRM_MODE_DPMS_ON 130 
#define  DRM_MODE_DPMS_STANDBY 129 
#define  DRM_MODE_DPMS_SUSPEND 128 
 int R420_TV_DAC_BDACPD ; 
 int R420_TV_DAC_GDACPD ; 
 int R420_TV_DAC_RDACPD ; 
 int RADEON_CRTC2_CRT2_ON ; 
 int /*<<< orphan*/  RADEON_CRTC2_GEN_CNTL ; 
 int RADEON_FP2_DVO_EN ; 
 int /*<<< orphan*/  RADEON_FP2_GEN_CNTL ; 
 int RADEON_FP2_ON ; 
 int RADEON_SINGLE_CRTC ; 
 int RADEON_TV_DAC_BDACPD ; 
 int RADEON_TV_DAC_BGSLEEP ; 
 int /*<<< orphan*/  RADEON_TV_DAC_CNTL ; 
 int RADEON_TV_DAC_GDACPD ; 
 int RADEON_TV_DAC_RDACPD ; 
 int /*<<< orphan*/  RADEON_TV_MASTER_CNTL ; 
 int RADEON_TV_ON ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int) ; 
 struct radeon_encoder* FUNC5 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC6(struct drm_encoder *encoder, int mode)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC5(encoder);
	uint32_t fp2_gen_cntl = 0, crtc2_gen_cntl = 0, tv_dac_cntl = 0;
	uint32_t tv_master_cntl = 0;
	bool is_tv;
	FUNC0("\n");

	is_tv = radeon_encoder->active_device & ATOM_DEVICE_TV_SUPPORT ? true : false;

	if (rdev->family == CHIP_R200)
		fp2_gen_cntl = FUNC1(RADEON_FP2_GEN_CNTL);
	else {
		if (is_tv)
			tv_master_cntl = FUNC1(RADEON_TV_MASTER_CNTL);
		else
			crtc2_gen_cntl = FUNC1(RADEON_CRTC2_GEN_CNTL);
		tv_dac_cntl = FUNC1(RADEON_TV_DAC_CNTL);
	}

	switch (mode) {
	case DRM_MODE_DPMS_ON:
		if (rdev->family == CHIP_R200) {
			fp2_gen_cntl |= (RADEON_FP2_ON | RADEON_FP2_DVO_EN);
		} else {
			if (is_tv)
				tv_master_cntl |= RADEON_TV_ON;
			else
				crtc2_gen_cntl |= RADEON_CRTC2_CRT2_ON;

			if (rdev->family == CHIP_R420 ||
			    rdev->family == CHIP_R423 ||
			    rdev->family == CHIP_RV410)
				tv_dac_cntl &= ~(R420_TV_DAC_RDACPD |
						 R420_TV_DAC_GDACPD |
						 R420_TV_DAC_BDACPD |
						 RADEON_TV_DAC_BGSLEEP);
			else
				tv_dac_cntl &= ~(RADEON_TV_DAC_RDACPD |
						 RADEON_TV_DAC_GDACPD |
						 RADEON_TV_DAC_BDACPD |
						 RADEON_TV_DAC_BGSLEEP);
		}
		break;
	case DRM_MODE_DPMS_STANDBY:
	case DRM_MODE_DPMS_SUSPEND:
	case DRM_MODE_DPMS_OFF:
		if (rdev->family == CHIP_R200)
			fp2_gen_cntl &= ~(RADEON_FP2_ON | RADEON_FP2_DVO_EN);
		else {
			if (is_tv)
				tv_master_cntl &= ~RADEON_TV_ON;
			else
				crtc2_gen_cntl &= ~RADEON_CRTC2_CRT2_ON;

			if (rdev->family == CHIP_R420 ||
			    rdev->family == CHIP_R423 ||
			    rdev->family == CHIP_RV410)
				tv_dac_cntl |= (R420_TV_DAC_RDACPD |
						R420_TV_DAC_GDACPD |
						R420_TV_DAC_BDACPD |
						RADEON_TV_DAC_BGSLEEP);
			else
				tv_dac_cntl |= (RADEON_TV_DAC_RDACPD |
						RADEON_TV_DAC_GDACPD |
						RADEON_TV_DAC_BDACPD |
						RADEON_TV_DAC_BGSLEEP);
		}
		break;
	}

	if (rdev->family == CHIP_R200) {
		FUNC2(RADEON_FP2_GEN_CNTL, fp2_gen_cntl);
	} else {
		if (is_tv)
			FUNC2(RADEON_TV_MASTER_CNTL, tv_master_cntl);
		/* handled in radeon_crtc_dpms() */
		else if (!(rdev->flags & RADEON_SINGLE_CRTC))
			FUNC2(RADEON_CRTC2_GEN_CNTL, crtc2_gen_cntl);
		FUNC2(RADEON_TV_DAC_CNTL, tv_dac_cntl);
	}

	if (rdev->is_atom_bios)
		FUNC3(encoder, (mode == DRM_MODE_DPMS_ON) ? true : false);
	else
		FUNC4(encoder, (mode == DRM_MODE_DPMS_ON) ? true : false);

}