#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct radeon_device {int ib_pool_ready; int /*<<< orphan*/  dev; int /*<<< orphan*/  ring_tmp_bo; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_GTT ; 
 int RADEON_IB_POOL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int FUNC2 (struct radeon_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct radeon_device*,int /*<<< orphan*/ *) ; 

int FUNC4(struct radeon_device *rdev)
{
	int r;

	if (rdev->ib_pool_ready) {
		return 0;
	}
	r = FUNC2(rdev, &rdev->ring_tmp_bo,
				      RADEON_IB_POOL_SIZE*64*1024,
				      RADEON_GEM_DOMAIN_GTT);
	if (r) {
		return r;
	}

	r = FUNC3(rdev, &rdev->ring_tmp_bo);
	if (r) {
		return r;
	}

	rdev->ib_pool_ready = true;
	if (FUNC1(rdev)) {
		FUNC0(rdev->dev, "failed to register debugfs file for SA\n");
	}
	return 0;
}