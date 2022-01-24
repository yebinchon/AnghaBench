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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct TYPE_2__ {struct radeon_crtc** crtcs; } ;
struct radeon_device {int usec_timeout; TYPE_1__ mode_info; } ;
struct radeon_crtc {scalar_t__ crtc_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS ; 
 scalar_t__ EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH ; 
 scalar_t__ EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS ; 
 scalar_t__ EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS_HIGH ; 
 int EVERGREEN_GRPH_SURFACE_UPDATE_PENDING ; 
 scalar_t__ EVERGREEN_GRPH_UPDATE ; 
 int EVERGREEN_GRPH_UPDATE_LOCK ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (scalar_t__) ; 

u32 FUNC5(struct radeon_device *rdev, int crtc_id, u64 crtc_base)
{
	struct radeon_crtc *radeon_crtc = rdev->mode_info.crtcs[crtc_id];
	u32 tmp = FUNC1(EVERGREEN_GRPH_UPDATE + radeon_crtc->crtc_offset);
	int i;

	/* Lock the graphics update lock */
	tmp |= EVERGREEN_GRPH_UPDATE_LOCK;
	FUNC2(EVERGREEN_GRPH_UPDATE + radeon_crtc->crtc_offset, tmp);

	/* update the scanout addresses */
	FUNC2(EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS_HIGH + radeon_crtc->crtc_offset,
	       FUNC4(crtc_base));
	FUNC2(EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
	       (u32)crtc_base);

	FUNC2(EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH + radeon_crtc->crtc_offset,
	       FUNC4(crtc_base));
	FUNC2(EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
	       (u32)crtc_base);

	/* Wait for update_pending to go high. */
	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC1(EVERGREEN_GRPH_UPDATE + radeon_crtc->crtc_offset) & EVERGREEN_GRPH_SURFACE_UPDATE_PENDING)
			break;
		FUNC3(1);
	}
	FUNC0("Update pending now high. Unlocking vupdate_lock.\n");

	/* Unlock the lock, so double-buffering can take place inside vblank */
	tmp &= ~EVERGREEN_GRPH_UPDATE_LOCK;
	FUNC2(EVERGREEN_GRPH_UPDATE + radeon_crtc->crtc_offset, tmp);

	/* Return current update_pending status: */
	return FUNC1(EVERGREEN_GRPH_UPDATE + radeon_crtc->crtc_offset) & EVERGREEN_GRPH_SURFACE_UPDATE_PENDING;
}