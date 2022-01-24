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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_fence_driver {int /*<<< orphan*/  scratch_reg; int /*<<< orphan*/ * cpu_addr; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ wb; struct radeon_fence_driver* fence_drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static u32 FUNC3(struct radeon_device *rdev, int ring)
{
	struct radeon_fence_driver *drv = &rdev->fence_drv[ring];
	u32 seq = 0;

	if (FUNC2(rdev->wb.enabled || !drv->scratch_reg)) {
		seq = FUNC1(*drv->cpu_addr);
	} else {
		seq = FUNC0(drv->scratch_reg);
	}
	return seq;
}