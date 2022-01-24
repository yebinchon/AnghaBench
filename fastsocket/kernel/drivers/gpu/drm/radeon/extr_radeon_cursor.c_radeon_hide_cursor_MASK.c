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
typedef  scalar_t__ u32 ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {int crtc_id; scalar_t__ crtc_offset; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int AVIVO_D1CURSOR_MODE_24BPP ; 
 int AVIVO_D1CURSOR_MODE_SHIFT ; 
 scalar_t__ AVIVO_D1CUR_CONTROL ; 
 int /*<<< orphan*/  EVERGREEN_CURSOR_24_8_PRE_MULT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVERGREEN_CURSOR_URGENT_1_2 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ EVERGREEN_CUR_CONTROL ; 
 scalar_t__ RADEON_CRTC2_GEN_CNTL ; 
 int RADEON_CRTC_CUR_EN ; 
 scalar_t__ RADEON_CRTC_GEN_CNTL ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 struct radeon_crtc* FUNC6 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC7(struct drm_crtc *crtc)
{
	struct radeon_crtc *radeon_crtc = FUNC6(crtc);
	struct radeon_device *rdev = crtc->dev->dev_private;

	if (FUNC1(rdev)) {
		FUNC5(EVERGREEN_CUR_CONTROL + radeon_crtc->crtc_offset,
			   FUNC2(EVERGREEN_CURSOR_24_8_PRE_MULT) |
			   FUNC3(EVERGREEN_CURSOR_URGENT_1_2));
	} else if (FUNC0(rdev)) {
		FUNC5(AVIVO_D1CUR_CONTROL + radeon_crtc->crtc_offset,
			   (AVIVO_D1CURSOR_MODE_24BPP << AVIVO_D1CURSOR_MODE_SHIFT));
	} else {
		u32 reg;
		switch (radeon_crtc->crtc_id) {
		case 0:
			reg = RADEON_CRTC_GEN_CNTL;
			break;
		case 1:
			reg = RADEON_CRTC2_GEN_CNTL;
			break;
		default:
			return;
		}
		FUNC5(reg, FUNC4(reg) & ~RADEON_CRTC_CUR_EN);
	}
}