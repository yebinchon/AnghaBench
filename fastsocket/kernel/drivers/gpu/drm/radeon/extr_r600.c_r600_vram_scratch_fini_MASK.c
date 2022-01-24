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
struct TYPE_2__ {int /*<<< orphan*/ * robj; } ;
struct radeon_device {TYPE_1__ vram_scratch; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct radeon_device *rdev)
{
	int r;

	if (rdev->vram_scratch.robj == NULL) {
		return;
	}
	r = FUNC2(rdev->vram_scratch.robj, false);
	if (FUNC0(r == 0)) {
		FUNC1(rdev->vram_scratch.robj);
		FUNC3(rdev->vram_scratch.robj);
		FUNC5(rdev->vram_scratch.robj);
	}
	FUNC4(&rdev->vram_scratch.robj);
}