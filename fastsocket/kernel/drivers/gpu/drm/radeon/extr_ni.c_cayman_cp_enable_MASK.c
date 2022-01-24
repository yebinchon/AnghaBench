#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  visible_vram_size; } ;
struct radeon_device {TYPE_2__* ring; TYPE_1__ mc; } ;
struct TYPE_4__ {int ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ME_CNTL ; 
 int CP_ME_HALT ; 
 int CP_PFP_HALT ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  SCRATCH_UMSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev, bool enable)
{
	if (enable)
		FUNC0(CP_ME_CNTL, 0);
	else {
		FUNC1(rdev, rdev->mc.visible_vram_size);
		FUNC0(CP_ME_CNTL, (CP_ME_HALT | CP_PFP_HALT));
		FUNC0(SCRATCH_UMSK, 0);
		rdev->ring[RADEON_RING_TYPE_GFX_INDEX].ready = false;
	}
}