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
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 struct radeon_crtc* FUNC2 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC3(struct drm_crtc *crtc)
{
	struct radeon_crtc *radeon_crtc = FUNC2(crtc);
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	int i;

	FUNC0("%d\n", radeon_crtc->crtc_id);
	FUNC1(EVERGREEN_DC_LUT_CONTROL + radeon_crtc->crtc_offset, 0);

	FUNC1(EVERGREEN_DC_LUT_BLACK_OFFSET_BLUE + radeon_crtc->crtc_offset, 0);
	FUNC1(EVERGREEN_DC_LUT_BLACK_OFFSET_GREEN + radeon_crtc->crtc_offset, 0);
	FUNC1(EVERGREEN_DC_LUT_BLACK_OFFSET_RED + radeon_crtc->crtc_offset, 0);

	FUNC1(EVERGREEN_DC_LUT_WHITE_OFFSET_BLUE + radeon_crtc->crtc_offset, 0xffff);
	FUNC1(EVERGREEN_DC_LUT_WHITE_OFFSET_GREEN + radeon_crtc->crtc_offset, 0xffff);
	FUNC1(EVERGREEN_DC_LUT_WHITE_OFFSET_RED + radeon_crtc->crtc_offset, 0xffff);

	FUNC1(EVERGREEN_DC_LUT_RW_MODE + radeon_crtc->crtc_offset, 0);
	FUNC1(EVERGREEN_DC_LUT_WRITE_EN_MASK + radeon_crtc->crtc_offset, 0x00000007);

	FUNC1(EVERGREEN_DC_LUT_RW_INDEX + radeon_crtc->crtc_offset, 0);
	for (i = 0; i < 256; i++) {
		FUNC1(EVERGREEN_DC_LUT_30_COLOR + radeon_crtc->crtc_offset,
		       (radeon_crtc->lut_r[i] << 20) |
		       (radeon_crtc->lut_g[i] << 10) |
		       (radeon_crtc->lut_b[i] << 0));
	}
}