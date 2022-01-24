#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__** afmt; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ mode_info; } ;
struct radeon_afmt {int dummy; } ;
struct TYPE_3__ {int id; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 scalar_t__ FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 scalar_t__ FUNC4 (struct radeon_device*) ; 
 scalar_t__ CHIP_R600 ; 
 int /*<<< orphan*/  DCE2_HDMI_OFFSET0 ; 
 int /*<<< orphan*/  DCE2_HDMI_OFFSET1 ; 
 int /*<<< orphan*/  DCE3_HDMI_OFFSET0 ; 
 int /*<<< orphan*/  DCE3_HDMI_OFFSET1 ; 
 int /*<<< orphan*/  EVERGREEN_CRTC0_REGISTER_OFFSET ; 
 int /*<<< orphan*/  EVERGREEN_CRTC1_REGISTER_OFFSET ; 
 int /*<<< orphan*/  EVERGREEN_CRTC2_REGISTER_OFFSET ; 
 int /*<<< orphan*/  EVERGREEN_CRTC3_REGISTER_OFFSET ; 
 int /*<<< orphan*/  EVERGREEN_CRTC4_REGISTER_OFFSET ; 
 int /*<<< orphan*/  EVERGREEN_CRTC5_REGISTER_OFFSET ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RADEON_MAX_AFMT_BLOCKS ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev)
{
	int i;

	for (i = 0; i < RADEON_MAX_AFMT_BLOCKS; i++)
		rdev->mode_info.afmt[i] = NULL;

	if (FUNC4(rdev)) {
		/* todo */
	} else if (FUNC2(rdev)) {
		/* DCE4/5 has 6 audio blocks tied to DIG encoders */
		/* DCE4.1 has 2 audio blocks tied to DIG encoders */
		rdev->mode_info.afmt[0] = FUNC5(sizeof(struct radeon_afmt), GFP_KERNEL);
		if (rdev->mode_info.afmt[0]) {
			rdev->mode_info.afmt[0]->offset = EVERGREEN_CRTC0_REGISTER_OFFSET;
			rdev->mode_info.afmt[0]->id = 0;
		}
		rdev->mode_info.afmt[1] = FUNC5(sizeof(struct radeon_afmt), GFP_KERNEL);
		if (rdev->mode_info.afmt[1]) {
			rdev->mode_info.afmt[1]->offset = EVERGREEN_CRTC1_REGISTER_OFFSET;
			rdev->mode_info.afmt[1]->id = 1;
		}
		if (!FUNC3(rdev)) {
			rdev->mode_info.afmt[2] = FUNC5(sizeof(struct radeon_afmt), GFP_KERNEL);
			if (rdev->mode_info.afmt[2]) {
				rdev->mode_info.afmt[2]->offset = EVERGREEN_CRTC2_REGISTER_OFFSET;
				rdev->mode_info.afmt[2]->id = 2;
			}
			rdev->mode_info.afmt[3] = FUNC5(sizeof(struct radeon_afmt), GFP_KERNEL);
			if (rdev->mode_info.afmt[3]) {
				rdev->mode_info.afmt[3]->offset = EVERGREEN_CRTC3_REGISTER_OFFSET;
				rdev->mode_info.afmt[3]->id = 3;
			}
			rdev->mode_info.afmt[4] = FUNC5(sizeof(struct radeon_afmt), GFP_KERNEL);
			if (rdev->mode_info.afmt[4]) {
				rdev->mode_info.afmt[4]->offset = EVERGREEN_CRTC4_REGISTER_OFFSET;
				rdev->mode_info.afmt[4]->id = 4;
			}
			rdev->mode_info.afmt[5] = FUNC5(sizeof(struct radeon_afmt), GFP_KERNEL);
			if (rdev->mode_info.afmt[5]) {
				rdev->mode_info.afmt[5]->offset = EVERGREEN_CRTC5_REGISTER_OFFSET;
				rdev->mode_info.afmt[5]->id = 5;
			}
		}
	} else if (FUNC1(rdev)) {
		/* DCE3.x has 2 audio blocks tied to DIG encoders */
		rdev->mode_info.afmt[0] = FUNC5(sizeof(struct radeon_afmt), GFP_KERNEL);
		if (rdev->mode_info.afmt[0]) {
			rdev->mode_info.afmt[0]->offset = DCE3_HDMI_OFFSET0;
			rdev->mode_info.afmt[0]->id = 0;
		}
		rdev->mode_info.afmt[1] = FUNC5(sizeof(struct radeon_afmt), GFP_KERNEL);
		if (rdev->mode_info.afmt[1]) {
			rdev->mode_info.afmt[1]->offset = DCE3_HDMI_OFFSET1;
			rdev->mode_info.afmt[1]->id = 1;
		}
	} else if (FUNC0(rdev)) {
		/* DCE2 has at least 1 routable audio block */
		rdev->mode_info.afmt[0] = FUNC5(sizeof(struct radeon_afmt), GFP_KERNEL);
		if (rdev->mode_info.afmt[0]) {
			rdev->mode_info.afmt[0]->offset = DCE2_HDMI_OFFSET0;
			rdev->mode_info.afmt[0]->id = 0;
		}
		/* r6xx has 2 routable audio blocks */
		if (rdev->family >= CHIP_R600) {
			rdev->mode_info.afmt[1] = FUNC5(sizeof(struct radeon_afmt), GFP_KERNEL);
			if (rdev->mode_info.afmt[1]) {
				rdev->mode_info.afmt[1]->offset = DCE2_HDMI_OFFSET1;
				rdev->mode_info.afmt[1]->id = 1;
			}
		}
	}
}