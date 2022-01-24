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
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/ * pflip; int /*<<< orphan*/  vblank_queue; scalar_t__* crtc_vblank_int; } ;
struct TYPE_3__ {int vblank_sync; } ;
struct radeon_device {int family; scalar_t__ msi_enabled; int /*<<< orphan*/  hotplug_work; TYPE_2__ irq; TYPE_1__ pm; int /*<<< orphan*/  ddev; scalar_t__ shutdown; } ;

/* Variables and functions */
#define  CHIP_RS400 129 
#define  CHIP_RS480 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  RADEON_AIC_CNTL ; 
 int RADEON_CRTC2_VBLANK_STAT ; 
 int RADEON_CRTC_VBLANK_STAT ; 
 int RADEON_FP2_DETECT_STAT ; 
 int RADEON_FP_DETECT_STAT ; 
 int /*<<< orphan*/  RADEON_MSI_REARM_EN ; 
 int /*<<< orphan*/  RADEON_RING_TYPE_GFX_INDEX ; 
 int RADEON_SW_INT_TEST ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int RS400_MSI_REARM ; 
 int RV370_MSI_REARM_EN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct radeon_device *rdev)
{
	uint32_t status, msi_rearm;
	bool queue_hotplug = false;

	status = FUNC5(rdev);
	if (!status) {
		return IRQ_NONE;
	}
	if (rdev->shutdown) {
		return IRQ_NONE;
	}
	while (status) {
		/* SW interrupt */
		if (status & RADEON_SW_INT_TEST) {
			FUNC7(rdev, RADEON_RING_TYPE_GFX_INDEX);
		}
		/* Vertical blank interrupts */
		if (status & RADEON_CRTC_VBLANK_STAT) {
			if (rdev->irq.crtc_vblank_int[0]) {
				FUNC4(rdev->ddev, 0);
				rdev->pm.vblank_sync = true;
				FUNC9(&rdev->irq.vblank_queue);
			}
			if (FUNC3(&rdev->irq.pflip[0]))
				FUNC6(rdev, 0);
		}
		if (status & RADEON_CRTC2_VBLANK_STAT) {
			if (rdev->irq.crtc_vblank_int[1]) {
				FUNC4(rdev->ddev, 1);
				rdev->pm.vblank_sync = true;
				FUNC9(&rdev->irq.vblank_queue);
			}
			if (FUNC3(&rdev->irq.pflip[1]))
				FUNC6(rdev, 1);
		}
		if (status & RADEON_FP_DETECT_STAT) {
			queue_hotplug = true;
			FUNC0("HPD1\n");
		}
		if (status & RADEON_FP2_DETECT_STAT) {
			queue_hotplug = true;
			FUNC0("HPD2\n");
		}
		status = FUNC5(rdev);
	}
	if (queue_hotplug)
		FUNC8(&rdev->hotplug_work);
	if (rdev->msi_enabled) {
		switch (rdev->family) {
		case CHIP_RS400:
		case CHIP_RS480:
			msi_rearm = FUNC1(RADEON_AIC_CNTL) & ~RS400_MSI_REARM;
			FUNC2(RADEON_AIC_CNTL, msi_rearm);
			FUNC2(RADEON_AIC_CNTL, msi_rearm | RS400_MSI_REARM);
			break;
		default:
			FUNC2(RADEON_MSI_REARM_EN, RV370_MSI_REARM_EN);
			break;
		}
	}
	return IRQ_HANDLED;
}