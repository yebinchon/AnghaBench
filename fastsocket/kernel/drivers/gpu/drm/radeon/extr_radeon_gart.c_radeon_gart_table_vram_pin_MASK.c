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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  table_addr; int /*<<< orphan*/  robj; int /*<<< orphan*/  ptr; } ;
struct radeon_device {TYPE_1__ gart; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct radeon_device *rdev)
{
	uint64_t gpu_addr;
	int r;

	r = FUNC2(rdev->gart.robj, false);
	if (FUNC5(r != 0))
		return r;
	r = FUNC1(rdev->gart.robj,
				RADEON_GEM_DOMAIN_VRAM, &gpu_addr);
	if (r) {
		FUNC4(rdev->gart.robj);
		return r;
	}
	r = FUNC0(rdev->gart.robj, &rdev->gart.ptr);
	if (r)
		FUNC3(rdev->gart.robj);
	FUNC4(rdev->gart.robj);
	rdev->gart.table_addr = gpu_addr;
	return r;
}