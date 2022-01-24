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
struct TYPE_2__ {int ready; int /*<<< orphan*/ * pages_addr; int /*<<< orphan*/ * pages; int /*<<< orphan*/  num_cpu_pages; } ;
struct radeon_device {TYPE_1__ gart; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct radeon_device *rdev)
{
	if (rdev->gart.pages && rdev->gart.pages_addr && rdev->gart.ready) {
		/* unbind pages */
		FUNC1(rdev, 0, rdev->gart.num_cpu_pages);
	}
	rdev->gart.ready = false;
	FUNC2(rdev->gart.pages);
	FUNC2(rdev->gart.pages_addr);
	rdev->gart.pages = NULL;
	rdev->gart.pages_addr = NULL;

	FUNC0(rdev);
}