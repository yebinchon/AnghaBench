#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct radeon_ring {int /*<<< orphan*/  ready; } ;
struct TYPE_6__ {scalar_t__ requested_clock_mode_index; scalar_t__ current_clock_mode_index; scalar_t__ requested_power_state_index; scalar_t__ current_power_state_index; int active_crtcs; int req_vblank; int /*<<< orphan*/  mclk_lock; int /*<<< orphan*/  dynpm_planned_action; scalar_t__ active_crtc_count; } ;
struct TYPE_5__ {scalar_t__ installed; } ;
struct radeon_device {int num_crtc; TYPE_3__* ddev; TYPE_2__ pm; int /*<<< orphan*/  ring_lock; TYPE_1__ irq; struct radeon_ring* ring; } ;
struct TYPE_7__ {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  DYNPM_ACTION_NONE ; 
 int RADEON_NUM_RINGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct radeon_device *rdev)
{
	int i, r;

	/* no need to take locks, etc. if nothing's going to change */
	if ((rdev->pm.requested_clock_mode_index == rdev->pm.current_clock_mode_index) &&
	    (rdev->pm.requested_power_state_index == rdev->pm.current_power_state_index))
		return;

	FUNC3(&rdev->ddev->struct_mutex);
	FUNC0(&rdev->pm.mclk_lock);
	FUNC3(&rdev->ring_lock);

	/* wait for the rings to drain */
	for (i = 0; i < RADEON_NUM_RINGS; i++) {
		struct radeon_ring *ring = &rdev->ring[i];
		if (!ring->ready) {
			continue;
		}
		r = FUNC6(rdev, i);
		if (r) {
			/* needs a GPU reset dont reset here */
			FUNC4(&rdev->ring_lock);
			FUNC10(&rdev->pm.mclk_lock);
			FUNC4(&rdev->ddev->struct_mutex);
			return;
		}
	}

	FUNC8(rdev);

	if (rdev->irq.installed) {
		for (i = 0; i < rdev->num_crtc; i++) {
			if (rdev->pm.active_crtcs & (1 << i)) {
				rdev->pm.req_vblank |= (1 << i);
				FUNC1(rdev->ddev, i);
			}
		}
	}

	FUNC7(rdev);

	if (rdev->irq.installed) {
		for (i = 0; i < rdev->num_crtc; i++) {
			if (rdev->pm.req_vblank & (1 << i)) {
				rdev->pm.req_vblank &= ~(1 << i);
				FUNC2(rdev->ddev, i);
			}
		}
	}

	/* update display watermarks based on new power state */
	FUNC9(rdev);
	if (rdev->pm.active_crtc_count)
		FUNC5(rdev);

	rdev->pm.dynpm_planned_action = DYNPM_ACTION_NONE;

	FUNC4(&rdev->ring_lock);
	FUNC10(&rdev->pm.mclk_lock);
	FUNC4(&rdev->ddev->struct_mutex);
}