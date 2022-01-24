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
struct radeon_crtc {int crtc_id; int* lut_r; int* lut_g; int* lut_b; scalar_t__ crtc_offset; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ AVIVO_D1GRPH_LUT_SEL ; 
 scalar_t__ AVIVO_DC_LUTA_BLACK_OFFSET_BLUE ; 
 scalar_t__ AVIVO_DC_LUTA_BLACK_OFFSET_GREEN ; 
 scalar_t__ AVIVO_DC_LUTA_BLACK_OFFSET_RED ; 
 scalar_t__ AVIVO_DC_LUTA_CONTROL ; 
 scalar_t__ AVIVO_DC_LUTA_WHITE_OFFSET_BLUE ; 
 scalar_t__ AVIVO_DC_LUTA_WHITE_OFFSET_GREEN ; 
 scalar_t__ AVIVO_DC_LUTA_WHITE_OFFSET_RED ; 
 scalar_t__ AVIVO_DC_LUT_30_COLOR ; 
 int /*<<< orphan*/  AVIVO_DC_LUT_RW_INDEX ; 
 scalar_t__ AVIVO_DC_LUT_RW_MODE ; 
 scalar_t__ AVIVO_DC_LUT_RW_SELECT ; 
 scalar_t__ AVIVO_DC_LUT_WRITE_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct radeon_crtc* FUNC3 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc)
{
	struct radeon_crtc *radeon_crtc = FUNC3(crtc);
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	int i;

	FUNC0("%d\n", radeon_crtc->crtc_id);
	FUNC1(AVIVO_DC_LUTA_CONTROL + radeon_crtc->crtc_offset, 0);

	FUNC1(AVIVO_DC_LUTA_BLACK_OFFSET_BLUE + radeon_crtc->crtc_offset, 0);
	FUNC1(AVIVO_DC_LUTA_BLACK_OFFSET_GREEN + radeon_crtc->crtc_offset, 0);
	FUNC1(AVIVO_DC_LUTA_BLACK_OFFSET_RED + radeon_crtc->crtc_offset, 0);

	FUNC1(AVIVO_DC_LUTA_WHITE_OFFSET_BLUE + radeon_crtc->crtc_offset, 0xffff);
	FUNC1(AVIVO_DC_LUTA_WHITE_OFFSET_GREEN + radeon_crtc->crtc_offset, 0xffff);
	FUNC1(AVIVO_DC_LUTA_WHITE_OFFSET_RED + radeon_crtc->crtc_offset, 0xffff);

	FUNC1(AVIVO_DC_LUT_RW_SELECT, radeon_crtc->crtc_id);
	FUNC1(AVIVO_DC_LUT_RW_MODE, 0);
	FUNC1(AVIVO_DC_LUT_WRITE_EN_MASK, 0x0000003f);

	FUNC2(AVIVO_DC_LUT_RW_INDEX, 0);
	for (i = 0; i < 256; i++) {
		FUNC1(AVIVO_DC_LUT_30_COLOR,
			     (radeon_crtc->lut_r[i] << 20) |
			     (radeon_crtc->lut_g[i] << 10) |
			     (radeon_crtc->lut_b[i] << 0));
	}

	FUNC1(AVIVO_D1GRPH_LUT_SEL + radeon_crtc->crtc_offset, radeon_crtc->crtc_id);
}