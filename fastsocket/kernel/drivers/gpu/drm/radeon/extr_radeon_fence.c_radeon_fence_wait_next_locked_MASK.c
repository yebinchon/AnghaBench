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
typedef  scalar_t__ uint64_t ;
struct radeon_device {TYPE_1__* fence_drv; } ;
struct TYPE_2__ {scalar_t__* sync_seq; int /*<<< orphan*/  last_seq; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct radeon_device*,scalar_t__,int,int,int) ; 

int FUNC2(struct radeon_device *rdev, int ring)
{
	uint64_t seq;

	seq = FUNC0(&rdev->fence_drv[ring].last_seq) + 1ULL;
	if (seq >= rdev->fence_drv[ring].sync_seq[ring]) {
		/* nothing to wait for, last_seq is
		   already the last emited fence */
		return -ENOENT;
	}
	return FUNC1(rdev, seq, ring, false, false);
}