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
struct radeon_device {int dummy; } ;
struct radeon_crtc {int* lut_r; int* lut_g; int* lut_b; scalar_t__ crtc_offset; int /*<<< orphan*/  crtc_id; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ EVERGREEN_DC_LUT_30_COLOR ; 
 scalar_t__ EVERGREEN_DC_LUT_BLACK_OFFSET_BLUE ; 
 scalar_t__ EVERGREEN_DC_LUT_BLACK_OFFSET_GREEN ; 
 scalar_t__ EVERGREEN_DC_LUT_BLACK_OFFSET_RED ; 
 scalar_t__ EVERGREEN_DC_LUT_CONTROL ; 
 scalar_t__ EVERGREEN_DC_LUT_RW_INDEX ; 
 scalar_t__ EVERGREEN_DC_LUT_RW_MODE ; 
 scalar_t__ EVERGREEN_DC_LUT_WHITE_OFFSET_BLUE ; 
 scalar_t__ EVERGREEN_DC_LUT_WHITE_OFFSET_GREEN ; 
 scalar_t__ EVERGREEN_DC_LUT_WHITE_OFFSET_RED ; 
 scalar_t__ EVERGREEN_DC_LUT_WRITE_EN_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NI_DEGAMMA_BYPASS ; 
 scalar_t__ NI_DEGAMMA_CONTROL ; 
 int /*<<< orphan*/  NI_GAMUT_REMAP_BYPASS ; 
 scalar_t__ NI_GAMUT_REMAP_CONTROL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int NI_GRPH_PRESCALE_BYPASS ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NI_INPUT_CSC_BYPASS ; 
 scalar_t__ NI_INPUT_CSC_CONTROL ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ NI_INPUT_GAMMA_CONTROL ; 
 int /*<<< orphan*/  NI_INPUT_GAMMA_USE_LUT ; 
 int /*<<< orphan*/  NI_OUTPUT_CSC_BYPASS ; 
 scalar_t__ NI_OUTPUT_CSC_CONTROL ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int NI_OVL_PRESCALE_BYPASS ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ NI_PRESCALE_GRPH_CONTROL ; 
 scalar_t__ NI_PRESCALE_OVL_CONTROL ; 
 int /*<<< orphan*/  NI_REGAMMA_BYPASS ; 
 scalar_t__ NI_REGAMMA_CONTROL ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int) ; 
 struct radeon_crtc* FUNC16 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC17(struct drm_crtc *crtc)
{
	struct radeon_crtc *radeon_crtc = FUNC16(crtc);
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	int i;

	FUNC0("%d\n", radeon_crtc->crtc_id);

	FUNC15(NI_INPUT_CSC_CONTROL + radeon_crtc->crtc_offset,
	       (FUNC7(NI_INPUT_CSC_BYPASS) |
		FUNC8(NI_INPUT_CSC_BYPASS)));
	FUNC15(NI_PRESCALE_GRPH_CONTROL + radeon_crtc->crtc_offset,
	       NI_GRPH_PRESCALE_BYPASS);
	FUNC15(NI_PRESCALE_OVL_CONTROL + radeon_crtc->crtc_offset,
	       NI_OVL_PRESCALE_BYPASS);
	FUNC15(NI_INPUT_GAMMA_CONTROL + radeon_crtc->crtc_offset,
	       (FUNC4(NI_INPUT_GAMMA_USE_LUT) |
		FUNC13(NI_INPUT_GAMMA_USE_LUT)));

	FUNC15(EVERGREEN_DC_LUT_CONTROL + radeon_crtc->crtc_offset, 0);

	FUNC15(EVERGREEN_DC_LUT_BLACK_OFFSET_BLUE + radeon_crtc->crtc_offset, 0);
	FUNC15(EVERGREEN_DC_LUT_BLACK_OFFSET_GREEN + radeon_crtc->crtc_offset, 0);
	FUNC15(EVERGREEN_DC_LUT_BLACK_OFFSET_RED + radeon_crtc->crtc_offset, 0);

	FUNC15(EVERGREEN_DC_LUT_WHITE_OFFSET_BLUE + radeon_crtc->crtc_offset, 0xffff);
	FUNC15(EVERGREEN_DC_LUT_WHITE_OFFSET_GREEN + radeon_crtc->crtc_offset, 0xffff);
	FUNC15(EVERGREEN_DC_LUT_WHITE_OFFSET_RED + radeon_crtc->crtc_offset, 0xffff);

	FUNC15(EVERGREEN_DC_LUT_RW_MODE + radeon_crtc->crtc_offset, 0);
	FUNC15(EVERGREEN_DC_LUT_WRITE_EN_MASK + radeon_crtc->crtc_offset, 0x00000007);

	FUNC15(EVERGREEN_DC_LUT_RW_INDEX + radeon_crtc->crtc_offset, 0);
	for (i = 0; i < 256; i++) {
		FUNC15(EVERGREEN_DC_LUT_30_COLOR + radeon_crtc->crtc_offset,
		       (radeon_crtc->lut_r[i] << 20) |
		       (radeon_crtc->lut_g[i] << 10) |
		       (radeon_crtc->lut_b[i] << 0));
	}

	FUNC15(NI_DEGAMMA_CONTROL + radeon_crtc->crtc_offset,
	       (FUNC2(NI_DEGAMMA_BYPASS) |
		FUNC11(NI_DEGAMMA_BYPASS) |
		FUNC6(NI_DEGAMMA_BYPASS) |
		FUNC1(NI_DEGAMMA_BYPASS)));
	FUNC15(NI_GAMUT_REMAP_CONTROL + radeon_crtc->crtc_offset,
	       (FUNC3(NI_GAMUT_REMAP_BYPASS) |
		FUNC12(NI_GAMUT_REMAP_BYPASS)));
	FUNC15(NI_REGAMMA_CONTROL + radeon_crtc->crtc_offset,
	       (FUNC5(NI_REGAMMA_BYPASS) |
		FUNC14(NI_REGAMMA_BYPASS)));
	FUNC15(NI_OUTPUT_CSC_CONTROL + radeon_crtc->crtc_offset,
	       (FUNC9(NI_OUTPUT_CSC_BYPASS) |
		FUNC10(NI_OUTPUT_CSC_BYPASS)));
	/* XXX match this to the depth of the crtc fmt block, move to modeset? */
	FUNC15(0x6940 + radeon_crtc->crtc_offset, 0);

}