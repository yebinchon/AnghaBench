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
struct TYPE_2__ {int /*<<< orphan*/ * clear_state_obj; int /*<<< orphan*/ * save_restore_obj; } ;
struct radeon_device {TYPE_1__ rlc; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct radeon_device *rdev)
{
	int r;

	/* save restore block */
	if (rdev->rlc.save_restore_obj) {
		r = FUNC1(rdev->rlc.save_restore_obj, false);
		if (FUNC5(r != 0))
			FUNC0(rdev->dev, "(%d) reserve RLC sr bo failed\n", r);
		FUNC2(rdev->rlc.save_restore_obj);
		FUNC4(rdev->rlc.save_restore_obj);

		FUNC3(&rdev->rlc.save_restore_obj);
		rdev->rlc.save_restore_obj = NULL;
	}

	/* clear state block */
	if (rdev->rlc.clear_state_obj) {
		r = FUNC1(rdev->rlc.clear_state_obj, false);
		if (FUNC5(r != 0))
			FUNC0(rdev->dev, "(%d) reserve RLC c bo failed\n", r);
		FUNC2(rdev->rlc.clear_state_obj);
		FUNC4(rdev->rlc.clear_state_obj);

		FUNC3(&rdev->rlc.clear_state_obj);
		rdev->rlc.clear_state_obj = NULL;
	}
}