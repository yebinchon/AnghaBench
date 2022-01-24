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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int num_gpu_pages; int /*<<< orphan*/ * ptr; } ;
struct radeon_device {TYPE_1__ gart; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct radeon_device *rdev, int i, uint64_t addr)
{
	u32 *gtt = rdev->gart.ptr;

	if (i < 0 || i > rdev->gart.num_gpu_pages) {
		return -EINVAL;
	}
	gtt[i] = FUNC0(FUNC1(addr));
	return 0;
}