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
struct radeon_device {int dummy; } ;
struct radeon_crtc {int crtc_offset; int crtc_id; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int AVIVO_D1CURSOR_EN ; 
 int AVIVO_D1CURSOR_MODE_24BPP ; 
 int AVIVO_D1CURSOR_MODE_SHIFT ; 
 int AVIVO_D1CUR_CONTROL ; 
 int /*<<< orphan*/  EVERGREEN_CURSOR_24_8_PRE_MULT ; 
 int EVERGREEN_CURSOR_EN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVERGREEN_CURSOR_URGENT_1_2 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int EVERGREEN_CUR_CONTROL ; 
 int RADEON_CRTC2_GEN_CNTL ; 
 int RADEON_CRTC_CUR_EN ; 
 int RADEON_CRTC_CUR_MODE_24BPP ; 
 int RADEON_CRTC_CUR_MODE_MASK ; 
 int RADEON_CRTC_CUR_MODE_SHIFT ; 
 int RADEON_CRTC_GEN_CNTL ; 
 int /*<<< orphan*/  RADEON_MM_DATA ; 
 int /*<<< orphan*/  RADEON_MM_INDEX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 struct radeon_crtc* FUNC6 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC7(struct drm_crtc *crtc)
{
	struct radeon_crtc *radeon_crtc = FUNC6(crtc);
	struct radeon_device *rdev = crtc->dev->dev_private;

	if (FUNC1(rdev)) {
		FUNC4(RADEON_MM_INDEX, EVERGREEN_CUR_CONTROL + radeon_crtc->crtc_offset);
		FUNC4(RADEON_MM_DATA, EVERGREEN_CURSOR_EN |
		       FUNC2(EVERGREEN_CURSOR_24_8_PRE_MULT) |
		       FUNC3(EVERGREEN_CURSOR_URGENT_1_2));
	} else if (FUNC0(rdev)) {
		FUNC4(RADEON_MM_INDEX, AVIVO_D1CUR_CONTROL + radeon_crtc->crtc_offset);
		FUNC4(RADEON_MM_DATA, AVIVO_D1CURSOR_EN |
		       (AVIVO_D1CURSOR_MODE_24BPP << AVIVO_D1CURSOR_MODE_SHIFT));
	} else {
		switch (radeon_crtc->crtc_id) {
		case 0:
			FUNC4(RADEON_MM_INDEX, RADEON_CRTC_GEN_CNTL);
			break;
		case 1:
			FUNC4(RADEON_MM_INDEX, RADEON_CRTC2_GEN_CNTL);
			break;
		default:
			return;
		}

		FUNC5(RADEON_MM_DATA, (RADEON_CRTC_CUR_EN |
					  (RADEON_CRTC_CUR_MODE_24BPP << RADEON_CRTC_CUR_MODE_SHIFT)),
			 ~(RADEON_CRTC_CUR_EN | RADEON_CRTC_CUR_MODE_MASK));
	}
}