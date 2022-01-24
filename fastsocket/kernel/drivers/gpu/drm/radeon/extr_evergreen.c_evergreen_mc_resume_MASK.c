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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ vram_start; } ;
struct radeon_device {int num_crtc; int usec_timeout; TYPE_1__ mc; } ;
struct evergreen_mc_save {int vga_hdp_control; int vga_render_control; scalar_t__* crtc_enabled; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ BIF_FB_EN ; 
 int BLACKOUT_MODE_MASK ; 
 scalar_t__ EVERGREEN_CRTC_BLANK_CONTROL ; 
 int EVERGREEN_CRTC_BLANK_DATA_EN ; 
 scalar_t__ EVERGREEN_CRTC_CONTROL ; 
 int EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE ; 
 scalar_t__ EVERGREEN_CRTC_UPDATE_LOCK ; 
 scalar_t__ EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS ; 
 scalar_t__ EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH ; 
 scalar_t__ EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS ; 
 scalar_t__ EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS_HIGH ; 
 int EVERGREEN_GRPH_SURFACE_UPDATE_PENDING ; 
 scalar_t__ EVERGREEN_GRPH_UPDATE ; 
 int EVERGREEN_GRPH_UPDATE_LOCK ; 
 scalar_t__ EVERGREEN_MASTER_UPDATE_LOCK ; 
 scalar_t__ EVERGREEN_MASTER_UPDATE_MODE ; 
 scalar_t__ EVERGREEN_VGA_MEMORY_BASE_ADDRESS ; 
 scalar_t__ EVERGREEN_VGA_MEMORY_BASE_ADDRESS_HIGH ; 
 int FB_READ_EN ; 
 int FB_WRITE_EN ; 
 scalar_t__ MC_SHARED_BLACKOUT_CNTL ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ VGA_HDP_CONTROL ; 
 scalar_t__ VGA_RENDER_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__* crtc_offsets ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (scalar_t__) ; 

void FUNC7(struct radeon_device *rdev, struct evergreen_mc_save *save)
{
	u32 tmp, frame_count;
	int i, j;

	/* update crtc base addresses */
	for (i = 0; i < rdev->num_crtc; i++) {
		FUNC2(EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH + crtc_offsets[i],
		       FUNC6(rdev->mc.vram_start));
		FUNC2(EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS_HIGH + crtc_offsets[i],
		       FUNC6(rdev->mc.vram_start));
		FUNC2(EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS + crtc_offsets[i],
		       (u32)rdev->mc.vram_start);
		FUNC2(EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS + crtc_offsets[i],
		       (u32)rdev->mc.vram_start);
	}
	FUNC2(EVERGREEN_VGA_MEMORY_BASE_ADDRESS_HIGH, FUNC6(rdev->mc.vram_start));
	FUNC2(EVERGREEN_VGA_MEMORY_BASE_ADDRESS, (u32)rdev->mc.vram_start);

	/* unlock regs and wait for update */
	for (i = 0; i < rdev->num_crtc; i++) {
		if (save->crtc_enabled[i]) {
			tmp = FUNC1(EVERGREEN_MASTER_UPDATE_MODE + crtc_offsets[i]);
			if ((tmp & 0x3) != 0) {
				tmp &= ~0x3;
				FUNC2(EVERGREEN_MASTER_UPDATE_MODE + crtc_offsets[i], tmp);
			}
			tmp = FUNC1(EVERGREEN_GRPH_UPDATE + crtc_offsets[i]);
			if (tmp & EVERGREEN_GRPH_UPDATE_LOCK) {
				tmp &= ~EVERGREEN_GRPH_UPDATE_LOCK;
				FUNC2(EVERGREEN_GRPH_UPDATE + crtc_offsets[i], tmp);
			}
			tmp = FUNC1(EVERGREEN_MASTER_UPDATE_LOCK + crtc_offsets[i]);
			if (tmp & 1) {
				tmp &= ~1;
				FUNC2(EVERGREEN_MASTER_UPDATE_LOCK + crtc_offsets[i], tmp);
			}
			for (j = 0; j < rdev->usec_timeout; j++) {
				tmp = FUNC1(EVERGREEN_GRPH_UPDATE + crtc_offsets[i]);
				if ((tmp & EVERGREEN_GRPH_SURFACE_UPDATE_PENDING) == 0)
					break;
				FUNC5(1);
			}
		}
	}

	/* unblackout the MC */
	tmp = FUNC1(MC_SHARED_BLACKOUT_CNTL);
	tmp &= ~BLACKOUT_MODE_MASK;
	FUNC2(MC_SHARED_BLACKOUT_CNTL, tmp);
	/* allow CPU access */
	FUNC2(BIF_FB_EN, FB_READ_EN | FB_WRITE_EN);

	for (i = 0; i < rdev->num_crtc; i++) {
		if (save->crtc_enabled[i]) {
			if (FUNC0(rdev)) {
				tmp = FUNC1(EVERGREEN_CRTC_BLANK_CONTROL + crtc_offsets[i]);
				tmp |= EVERGREEN_CRTC_BLANK_DATA_EN;
				FUNC2(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 1);
				FUNC2(EVERGREEN_CRTC_BLANK_CONTROL + crtc_offsets[i], tmp);
				FUNC2(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 0);
			} else {
				tmp = FUNC1(EVERGREEN_CRTC_CONTROL + crtc_offsets[i]);
				tmp &= ~EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE;
				FUNC2(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 1);
				FUNC2(EVERGREEN_CRTC_CONTROL + crtc_offsets[i], tmp);
				FUNC2(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 0);
			}
			/* wait for the next frame */
			frame_count = FUNC4(rdev, i);
			for (j = 0; j < rdev->usec_timeout; j++) {
				if (FUNC4(rdev, i) != frame_count)
					break;
				FUNC5(1);
			}
		}
	}
	/* Unlock vga access */
	FUNC2(VGA_HDP_CONTROL, save->vga_hdp_control);
	FUNC3(1);
	FUNC2(VGA_RENDER_CONTROL, save->vga_render_control);
}