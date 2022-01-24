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
struct radeon_device {TYPE_1__* ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  rptr_save_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 scalar_t__ FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ ) ; 

void FUNC6(struct radeon_device *rdev)
{
	if (FUNC3(rdev)) {
		FUNC0("Wait for CP idle timeout, shutting down CP.\n");
	}
	/* Disable ring */
	FUNC2(rdev);
	FUNC5(rdev, rdev->ring[RADEON_RING_TYPE_GFX_INDEX].rptr_save_reg);
	FUNC4(rdev, &rdev->ring[RADEON_RING_TYPE_GFX_INDEX]);
	FUNC1("radeon: cp finalized\n");
}