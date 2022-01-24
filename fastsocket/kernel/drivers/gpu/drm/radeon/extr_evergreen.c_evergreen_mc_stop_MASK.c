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
typedef  int u32 ;
struct radeon_device {int num_crtc; int usec_timeout; } ;
struct evergreen_mc_save {int vga_render_control; int vga_hdp_control; int* crtc_enabled; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ BIF_FB_EN ; 
 int BLACKOUT_MODE_MASK ; 
 scalar_t__ EVERGREEN_CRTC_BLANK_CONTROL ; 
 int EVERGREEN_CRTC_BLANK_DATA_EN ; 
 scalar_t__ EVERGREEN_CRTC_CONTROL ; 
 int EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE ; 
 int EVERGREEN_CRTC_MASTER_EN ; 
 scalar_t__ EVERGREEN_CRTC_UPDATE_LOCK ; 
 scalar_t__ EVERGREEN_GRPH_UPDATE ; 
 int EVERGREEN_GRPH_UPDATE_LOCK ; 
 scalar_t__ EVERGREEN_MASTER_UPDATE_LOCK ; 
 scalar_t__ MC_SHARED_BLACKOUT_CNTL ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ VGA_HDP_CONTROL ; 
 scalar_t__ VGA_RENDER_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__* crtc_offsets ; 
 int FUNC3 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(struct radeon_device *rdev, struct evergreen_mc_save *save)
{
	u32 crtc_enabled, tmp, frame_count, blackout;
	int i, j;

	save->vga_render_control = FUNC1(VGA_RENDER_CONTROL);
	save->vga_hdp_control = FUNC1(VGA_HDP_CONTROL);

	/* disable VGA render */
	FUNC2(VGA_RENDER_CONTROL, 0);
	/* blank the display controllers */
	for (i = 0; i < rdev->num_crtc; i++) {
		crtc_enabled = FUNC1(EVERGREEN_CRTC_CONTROL + crtc_offsets[i]) & EVERGREEN_CRTC_MASTER_EN;
		if (crtc_enabled) {
			save->crtc_enabled[i] = true;
			if (FUNC0(rdev)) {
				tmp = FUNC1(EVERGREEN_CRTC_BLANK_CONTROL + crtc_offsets[i]);
				if (!(tmp & EVERGREEN_CRTC_BLANK_DATA_EN)) {
					FUNC5(rdev, i);
					FUNC2(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 1);
					tmp |= EVERGREEN_CRTC_BLANK_DATA_EN;
					FUNC2(EVERGREEN_CRTC_BLANK_CONTROL + crtc_offsets[i], tmp);
				}
			} else {
				tmp = FUNC1(EVERGREEN_CRTC_CONTROL + crtc_offsets[i]);
				if (!(tmp & EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE)) {
					FUNC5(rdev, i);
					FUNC2(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 1);
					tmp |= EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE;
					FUNC2(EVERGREEN_CRTC_CONTROL + crtc_offsets[i], tmp);
					FUNC2(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 0);
				}
			}
			/* wait for the next frame */
			frame_count = FUNC3(rdev, i);
			for (j = 0; j < rdev->usec_timeout; j++) {
				if (FUNC3(rdev, i) != frame_count)
					break;
				FUNC6(1);
			}

			/* XXX this is a hack to avoid strange behavior with EFI on certain systems */
			FUNC2(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 1);
			tmp = FUNC1(EVERGREEN_CRTC_CONTROL + crtc_offsets[i]);
			tmp &= ~EVERGREEN_CRTC_MASTER_EN;
			FUNC2(EVERGREEN_CRTC_CONTROL + crtc_offsets[i], tmp);
			FUNC2(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 0);
			save->crtc_enabled[i] = false;
			/* ***** */
		} else {
			save->crtc_enabled[i] = false;
		}
	}

	FUNC4(rdev);

	blackout = FUNC1(MC_SHARED_BLACKOUT_CNTL);
	if ((blackout & BLACKOUT_MODE_MASK) != 1) {
		/* Block CPU access */
		FUNC2(BIF_FB_EN, 0);
		/* blackout the MC */
		blackout &= ~BLACKOUT_MODE_MASK;
		FUNC2(MC_SHARED_BLACKOUT_CNTL, blackout | 1);
	}
	/* wait for the MC to settle */
	FUNC6(100);

	/* lock double buffered regs */
	for (i = 0; i < rdev->num_crtc; i++) {
		if (save->crtc_enabled[i]) {
			tmp = FUNC1(EVERGREEN_GRPH_UPDATE + crtc_offsets[i]);
			if (!(tmp & EVERGREEN_GRPH_UPDATE_LOCK)) {
				tmp |= EVERGREEN_GRPH_UPDATE_LOCK;
				FUNC2(EVERGREEN_GRPH_UPDATE + crtc_offsets[i], tmp);
			}
			tmp = FUNC1(EVERGREEN_MASTER_UPDATE_LOCK + crtc_offsets[i]);
			if (!(tmp & 1)) {
				tmp |= 1;
				FUNC2(EVERGREEN_MASTER_UPDATE_LOCK + crtc_offsets[i], tmp);
			}
		}
	}
}