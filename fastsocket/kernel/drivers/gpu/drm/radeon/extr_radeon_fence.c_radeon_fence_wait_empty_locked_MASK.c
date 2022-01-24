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
struct radeon_device {int /*<<< orphan*/  dev; TYPE_1__* fence_drv; } ;
struct TYPE_2__ {int /*<<< orphan*/ * sync_seq; } ;

/* Variables and functions */
 int EDEADLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int,int,int) ; 

int FUNC2(struct radeon_device *rdev, int ring)
{
	uint64_t seq = rdev->fence_drv[ring].sync_seq[ring];
	int r;

	r = FUNC1(rdev, seq, ring, false, false);
	if (r) {
		if (r == -EDEADLK) {
			return -EDEADLK;
		}
		FUNC0(rdev->dev, "error waiting for ring[%d] to become idle (%d)\n",
			ring, r);
	}
	return 0;
}