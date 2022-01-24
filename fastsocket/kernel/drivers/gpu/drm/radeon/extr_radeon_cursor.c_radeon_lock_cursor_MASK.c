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
typedef  int /*<<< orphan*/  uint32_t ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {scalar_t__ crtc_offset; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  AVIVO_D1CURSOR_UPDATE_LOCK ; 
 scalar_t__ AVIVO_D1CUR_UPDATE ; 
 int /*<<< orphan*/  EVERGREEN_CURSOR_UPDATE_LOCK ; 
 scalar_t__ EVERGREEN_CUR_UPDATE ; 
 int /*<<< orphan*/  RADEON_CUR_LOCK ; 
 scalar_t__ RADEON_CUR_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct radeon_crtc* FUNC4 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC5(struct drm_crtc *crtc, bool lock)
{
	struct radeon_device *rdev = crtc->dev->dev_private;
	struct radeon_crtc *radeon_crtc = FUNC4(crtc);
	uint32_t cur_lock;

	if (FUNC1(rdev)) {
		cur_lock = FUNC2(EVERGREEN_CUR_UPDATE + radeon_crtc->crtc_offset);
		if (lock)
			cur_lock |= EVERGREEN_CURSOR_UPDATE_LOCK;
		else
			cur_lock &= ~EVERGREEN_CURSOR_UPDATE_LOCK;
		FUNC3(EVERGREEN_CUR_UPDATE + radeon_crtc->crtc_offset, cur_lock);
	} else if (FUNC0(rdev)) {
		cur_lock = FUNC2(AVIVO_D1CUR_UPDATE + radeon_crtc->crtc_offset);
		if (lock)
			cur_lock |= AVIVO_D1CURSOR_UPDATE_LOCK;
		else
			cur_lock &= ~AVIVO_D1CURSOR_UPDATE_LOCK;
		FUNC3(AVIVO_D1CUR_UPDATE + radeon_crtc->crtc_offset, cur_lock);
	} else {
		cur_lock = FUNC2(RADEON_CUR_OFFSET + radeon_crtc->crtc_offset);
		if (lock)
			cur_lock |= RADEON_CUR_LOCK;
		else
			cur_lock &= ~RADEON_CUR_LOCK;
		FUNC3(RADEON_CUR_OFFSET + radeon_crtc->crtc_offset, cur_lock);
	}
}