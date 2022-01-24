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
struct radeon_encoder_tv_dac {scalar_t__ tv_std; int ntsc_tvdac_adj; int pal_tvdac_adj; int ps2_tvdac_adj; } ;
struct radeon_encoder {int active_device; struct radeon_encoder_tv_dac* enc_priv; } ;
struct radeon_device {scalar_t__ family; scalar_t__ is_atom_bios; } ;
struct radeon_crtc {scalar_t__ crtc_id; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; struct drm_device* dev; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int ATOM_DEVICE_TV_SUPPORT ; 
 scalar_t__ CHIP_R200 ; 
 scalar_t__ CHIP_R420 ; 
 scalar_t__ CHIP_R423 ; 
 scalar_t__ CHIP_RV410 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int R200_FP2_SOURCE_SEL_CRTC2 ; 
 int R200_FP2_SOURCE_SEL_MASK ; 
 int R420_TV_DAC_BDACPD ; 
 int R420_TV_DAC_DACADJ_MASK ; 
 int R420_TV_DAC_GDACPD ; 
 int R420_TV_DAC_RDACPD ; 
 int R420_TV_DAC_TVENABLE ; 
 int RADEON_CRT2_DISP1_SEL ; 
 int RADEON_DAC2_DAC2_CLK_SEL ; 
 int /*<<< orphan*/  RADEON_DAC_CNTL ; 
 int /*<<< orphan*/  RADEON_DAC_CNTL2 ; 
 int RADEON_DAC_TVO_EN ; 
 int /*<<< orphan*/  RADEON_DISP_HW_DEBUG ; 
 int /*<<< orphan*/  RADEON_DISP_OUTPUT_CNTL ; 
 int RADEON_DISP_TVDAC_SOURCE_CRTC ; 
 int RADEON_DISP_TVDAC_SOURCE_CRTC2 ; 
 int RADEON_DISP_TVDAC_SOURCE_MASK ; 
 int /*<<< orphan*/  RADEON_DISP_TV_OUT_CNTL ; 
 int RADEON_DISP_TV_PATH_SRC_CRTC2 ; 
 int RADEON_DISP_TV_SOURCE_CRTC ; 
 int RADEON_FP2_DVO_RATE_SEL_SDR ; 
 int /*<<< orphan*/  RADEON_FP2_GEN_CNTL ; 
 int /*<<< orphan*/  RADEON_GPIOPAD_A ; 
 int RADEON_TV_DAC_BDACPD ; 
 int RADEON_TV_DAC_BGADJ_MASK ; 
 int /*<<< orphan*/  RADEON_TV_DAC_CNTL ; 
 int RADEON_TV_DAC_DACADJ_MASK ; 
 int RADEON_TV_DAC_GDACPD ; 
 int RADEON_TV_DAC_NBLANK ; 
 int RADEON_TV_DAC_NHOLD ; 
 int RADEON_TV_DAC_RDACPD ; 
 int RADEON_TV_DAC_STD_MASK ; 
 int RADEON_TV_DAC_STD_NTSC ; 
 int RADEON_TV_DAC_STD_PAL ; 
 int RADEON_TV_DAC_STD_PS2 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TV_STD_NTSC ; 
 scalar_t__ TV_STD_NTSC_J ; 
 scalar_t__ TV_STD_PAL_60 ; 
 scalar_t__ TV_STD_PAL_M ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*,struct drm_display_mode*,struct drm_display_mode*) ; 
 struct radeon_crtc* FUNC8 (int /*<<< orphan*/ ) ; 
 struct radeon_encoder* FUNC9 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC10(struct drm_encoder *encoder,
		struct drm_display_mode *mode,
		struct drm_display_mode *adjusted_mode)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_crtc *radeon_crtc = FUNC8(encoder->crtc);
	struct radeon_encoder *radeon_encoder = FUNC9(encoder);
	struct radeon_encoder_tv_dac *tv_dac = radeon_encoder->enc_priv;
	uint32_t tv_dac_cntl, gpiopad_a = 0, dac2_cntl, disp_output_cntl = 0;
	uint32_t disp_hw_debug = 0, fp2_gen_cntl = 0, disp_tv_out_cntl = 0;
	bool is_tv = false;

	FUNC1("\n");

	is_tv = radeon_encoder->active_device & ATOM_DEVICE_TV_SUPPORT ? true : false;

	if (rdev->family != CHIP_R200) {
		tv_dac_cntl = FUNC2(RADEON_TV_DAC_CNTL);
		if (rdev->family == CHIP_R420 ||
		    rdev->family == CHIP_R423 ||
		    rdev->family == CHIP_RV410) {
			tv_dac_cntl &= ~(RADEON_TV_DAC_STD_MASK |
					 RADEON_TV_DAC_BGADJ_MASK |
					 R420_TV_DAC_DACADJ_MASK |
					 R420_TV_DAC_RDACPD |
					 R420_TV_DAC_GDACPD |
					 R420_TV_DAC_BDACPD |
					 R420_TV_DAC_TVENABLE);
		} else {
			tv_dac_cntl &= ~(RADEON_TV_DAC_STD_MASK |
					 RADEON_TV_DAC_BGADJ_MASK |
					 RADEON_TV_DAC_DACADJ_MASK |
					 RADEON_TV_DAC_RDACPD |
					 RADEON_TV_DAC_GDACPD |
					 RADEON_TV_DAC_BDACPD);
		}

		tv_dac_cntl |= RADEON_TV_DAC_NBLANK | RADEON_TV_DAC_NHOLD;

		if (is_tv) {
			if (tv_dac->tv_std == TV_STD_NTSC ||
			    tv_dac->tv_std == TV_STD_NTSC_J ||
			    tv_dac->tv_std == TV_STD_PAL_M ||
			    tv_dac->tv_std == TV_STD_PAL_60)
				tv_dac_cntl |= tv_dac->ntsc_tvdac_adj;
			else
				tv_dac_cntl |= tv_dac->pal_tvdac_adj;

			if (tv_dac->tv_std == TV_STD_NTSC ||
			    tv_dac->tv_std == TV_STD_NTSC_J)
				tv_dac_cntl |= RADEON_TV_DAC_STD_NTSC;
			else
				tv_dac_cntl |= RADEON_TV_DAC_STD_PAL;
		} else
			tv_dac_cntl |= (RADEON_TV_DAC_STD_PS2 |
					tv_dac->ps2_tvdac_adj);

		FUNC3(RADEON_TV_DAC_CNTL, tv_dac_cntl);
	}

	if (FUNC0(rdev)) {
		gpiopad_a = FUNC2(RADEON_GPIOPAD_A) | 1;
		disp_output_cntl = FUNC2(RADEON_DISP_OUTPUT_CNTL);
	} else if (rdev->family != CHIP_R200)
		disp_hw_debug = FUNC2(RADEON_DISP_HW_DEBUG);
	else if (rdev->family == CHIP_R200)
		fp2_gen_cntl = FUNC2(RADEON_FP2_GEN_CNTL);

	if (rdev->family >= CHIP_R200)
		disp_tv_out_cntl = FUNC2(RADEON_DISP_TV_OUT_CNTL);

	if (is_tv) {
		uint32_t dac_cntl;

		dac_cntl = FUNC2(RADEON_DAC_CNTL);
		dac_cntl &= ~RADEON_DAC_TVO_EN;
		FUNC3(RADEON_DAC_CNTL, dac_cntl);

		if (FUNC0(rdev))
			gpiopad_a = FUNC2(RADEON_GPIOPAD_A) & ~1;

		dac2_cntl = FUNC2(RADEON_DAC_CNTL2) & ~RADEON_DAC2_DAC2_CLK_SEL;
		if (radeon_crtc->crtc_id == 0) {
			if (FUNC0(rdev)) {
				disp_output_cntl &= ~RADEON_DISP_TVDAC_SOURCE_MASK;
				disp_output_cntl |= (RADEON_DISP_TVDAC_SOURCE_CRTC |
						     RADEON_DISP_TV_SOURCE_CRTC);
			}
			if (rdev->family >= CHIP_R200) {
				disp_tv_out_cntl &= ~RADEON_DISP_TV_PATH_SRC_CRTC2;
			} else {
				disp_hw_debug |= RADEON_CRT2_DISP1_SEL;
			}
		} else {
			if (FUNC0(rdev)) {
				disp_output_cntl &= ~RADEON_DISP_TVDAC_SOURCE_MASK;
				disp_output_cntl |= RADEON_DISP_TV_SOURCE_CRTC;
			}
			if (rdev->family >= CHIP_R200) {
				disp_tv_out_cntl |= RADEON_DISP_TV_PATH_SRC_CRTC2;
			} else {
				disp_hw_debug &= ~RADEON_CRT2_DISP1_SEL;
			}
		}
		FUNC3(RADEON_DAC_CNTL2, dac2_cntl);
	} else {

		dac2_cntl = FUNC2(RADEON_DAC_CNTL2) | RADEON_DAC2_DAC2_CLK_SEL;

		if (radeon_crtc->crtc_id == 0) {
			if (FUNC0(rdev)) {
				disp_output_cntl &= ~RADEON_DISP_TVDAC_SOURCE_MASK;
				disp_output_cntl |= RADEON_DISP_TVDAC_SOURCE_CRTC;
			} else if (rdev->family == CHIP_R200) {
				fp2_gen_cntl &= ~(R200_FP2_SOURCE_SEL_MASK |
						  RADEON_FP2_DVO_RATE_SEL_SDR);
			} else
				disp_hw_debug |= RADEON_CRT2_DISP1_SEL;
		} else {
			if (FUNC0(rdev)) {
				disp_output_cntl &= ~RADEON_DISP_TVDAC_SOURCE_MASK;
				disp_output_cntl |= RADEON_DISP_TVDAC_SOURCE_CRTC2;
			} else if (rdev->family == CHIP_R200) {
				fp2_gen_cntl &= ~(R200_FP2_SOURCE_SEL_MASK |
						  RADEON_FP2_DVO_RATE_SEL_SDR);
				fp2_gen_cntl |= R200_FP2_SOURCE_SEL_CRTC2;
			} else
				disp_hw_debug &= ~RADEON_CRT2_DISP1_SEL;
		}
		FUNC3(RADEON_DAC_CNTL2, dac2_cntl);
	}

	if (FUNC0(rdev)) {
		FUNC4(RADEON_GPIOPAD_A, gpiopad_a, ~1);
		FUNC3(RADEON_DISP_OUTPUT_CNTL, disp_output_cntl);
	} else if (rdev->family != CHIP_R200)
		FUNC3(RADEON_DISP_HW_DEBUG, disp_hw_debug);
	else if (rdev->family == CHIP_R200)
		FUNC3(RADEON_FP2_GEN_CNTL, fp2_gen_cntl);

	if (rdev->family >= CHIP_R200)
		FUNC3(RADEON_DISP_TV_OUT_CNTL, disp_tv_out_cntl);

	if (is_tv)
		FUNC7(encoder, mode, adjusted_mode);

	if (rdev->is_atom_bios)
		FUNC5(encoder, radeon_crtc->crtc_id);
	else
		FUNC6(encoder, radeon_crtc->crtc_id);

}