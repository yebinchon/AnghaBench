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
struct radeon_encoder_primary_dac {int ps2_pdac_adj; } ;
struct radeon_encoder {scalar_t__ enc_priv; } ;
struct radeon_device {scalar_t__ family; scalar_t__ is_atom_bios; } ;
struct radeon_crtc {scalar_t__ crtc_id; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; struct drm_device* dev; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ CHIP_R200 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int RADEON_DAC2_DAC_CLK_SEL ; 
 int RADEON_DAC_8BIT_EN ; 
 int RADEON_DAC_BLANKING ; 
 int /*<<< orphan*/  RADEON_DAC_CNTL ; 
 int /*<<< orphan*/  RADEON_DAC_CNTL2 ; 
 int /*<<< orphan*/  RADEON_DAC_MACRO_CNTL ; 
 int RADEON_DAC_MASK_ALL ; 
 int RADEON_DAC_PDWN_B ; 
 int RADEON_DAC_PDWN_G ; 
 int RADEON_DAC_PDWN_R ; 
 int RADEON_DAC_RANGE_CNTL ; 
 int RADEON_DAC_VGA_ADR_EN ; 
 int RADEON_DISP_DAC_SOURCE_CRTC2 ; 
 int RADEON_DISP_DAC_SOURCE_MASK ; 
 int /*<<< orphan*/  RADEON_DISP_OUTPUT_CNTL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,scalar_t__) ; 
 struct radeon_crtc* FUNC7 (int /*<<< orphan*/ ) ; 
 struct radeon_encoder* FUNC8 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC9(struct drm_encoder *encoder,
					       struct drm_display_mode *mode,
					       struct drm_display_mode *adjusted_mode)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_crtc *radeon_crtc = FUNC7(encoder->crtc);
	struct radeon_encoder *radeon_encoder = FUNC8(encoder);
	uint32_t disp_output_cntl, dac_cntl, dac2_cntl, dac_macro_cntl;

	FUNC1("\n");

	if (radeon_crtc->crtc_id == 0) {
		if (rdev->family == CHIP_R200 || FUNC0(rdev)) {
			disp_output_cntl = FUNC2(RADEON_DISP_OUTPUT_CNTL) &
				~(RADEON_DISP_DAC_SOURCE_MASK);
			FUNC3(RADEON_DISP_OUTPUT_CNTL, disp_output_cntl);
		} else {
			dac2_cntl = FUNC2(RADEON_DAC_CNTL2)  & ~(RADEON_DAC2_DAC_CLK_SEL);
			FUNC3(RADEON_DAC_CNTL2, dac2_cntl);
		}
	} else {
		if (rdev->family == CHIP_R200 || FUNC0(rdev)) {
			disp_output_cntl = FUNC2(RADEON_DISP_OUTPUT_CNTL) &
				~(RADEON_DISP_DAC_SOURCE_MASK);
			disp_output_cntl |= RADEON_DISP_DAC_SOURCE_CRTC2;
			FUNC3(RADEON_DISP_OUTPUT_CNTL, disp_output_cntl);
		} else {
			dac2_cntl = FUNC2(RADEON_DAC_CNTL2) | RADEON_DAC2_DAC_CLK_SEL;
			FUNC3(RADEON_DAC_CNTL2, dac2_cntl);
		}
	}

	dac_cntl = (RADEON_DAC_MASK_ALL |
		    RADEON_DAC_VGA_ADR_EN |
		    /* TODO 6-bits */
		    RADEON_DAC_8BIT_EN);

	FUNC4(RADEON_DAC_CNTL,
		       dac_cntl,
		       RADEON_DAC_RANGE_CNTL |
		       RADEON_DAC_BLANKING);

	if (radeon_encoder->enc_priv) {
		struct radeon_encoder_primary_dac *p_dac = (struct radeon_encoder_primary_dac *)radeon_encoder->enc_priv;
		dac_macro_cntl = p_dac->ps2_pdac_adj;
	} else
		dac_macro_cntl = FUNC2(RADEON_DAC_MACRO_CNTL);
	dac_macro_cntl |= RADEON_DAC_PDWN_R | RADEON_DAC_PDWN_G | RADEON_DAC_PDWN_B;
	FUNC3(RADEON_DAC_MACRO_CNTL, dac_macro_cntl);

	if (rdev->is_atom_bios)
		FUNC5(encoder, radeon_crtc->crtc_id);
	else
		FUNC6(encoder, radeon_crtc->crtc_id);
}