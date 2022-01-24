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
struct TYPE_2__ {scalar_t__* hpd; int /*<<< orphan*/ * pflip; scalar_t__* crtc_vblank_int; int /*<<< orphan*/ * ring_int; int /*<<< orphan*/  installed; } ;
struct radeon_device {TYPE_1__ irq; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RADEON_CRTC2_VBLANK_MASK ; 
 int /*<<< orphan*/  RADEON_CRTC_VBLANK_MASK ; 
 int /*<<< orphan*/  RADEON_FP2_DETECT_MASK ; 
 int /*<<< orphan*/  RADEON_FP_DETECT_MASK ; 
 int /*<<< orphan*/  RADEON_GEN_INT_CNTL ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  RADEON_SW_INT_ENABLE ; 
 int /*<<< orphan*/  R_000040_GEN_INT_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct radeon_device *rdev)
{
	uint32_t tmp = 0;

	if (!rdev->irq.installed) {
		FUNC0(1, "Can't enable IRQ/MSI because no handler is installed\n");
		FUNC1(R_000040_GEN_INT_CNTL, 0);
		return -EINVAL;
	}
	if (FUNC2(&rdev->irq.ring_int[RADEON_RING_TYPE_GFX_INDEX])) {
		tmp |= RADEON_SW_INT_ENABLE;
	}
	if (rdev->irq.crtc_vblank_int[0] ||
	    FUNC2(&rdev->irq.pflip[0])) {
		tmp |= RADEON_CRTC_VBLANK_MASK;
	}
	if (rdev->irq.crtc_vblank_int[1] ||
	    FUNC2(&rdev->irq.pflip[1])) {
		tmp |= RADEON_CRTC2_VBLANK_MASK;
	}
	if (rdev->irq.hpd[0]) {
		tmp |= RADEON_FP_DETECT_MASK;
	}
	if (rdev->irq.hpd[1]) {
		tmp |= RADEON_FP2_DETECT_MASK;
	}
	FUNC1(RADEON_GEN_INT_CNTL, tmp);
	return 0;
}