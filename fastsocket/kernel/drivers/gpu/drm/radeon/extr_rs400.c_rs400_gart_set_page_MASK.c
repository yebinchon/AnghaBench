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
typedef  int uint32_t ;
typedef  int u32 ;
struct TYPE_2__ {int* ptr; int num_gpu_pages; } ;
struct radeon_device {TYPE_1__ gart; } ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_MASK ; 
 int RS400_PTE_READABLE ; 
 int RS400_PTE_WRITEABLE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct radeon_device *rdev, int i, uint64_t addr)
{
	uint32_t entry;
	u32 *gtt = rdev->gart.ptr;

	if (i < 0 || i > rdev->gart.num_gpu_pages) {
		return -EINVAL;
	}

	entry = (FUNC1(addr) & PAGE_MASK) |
		((FUNC2(addr) & 0xff) << 4) |
		RS400_PTE_WRITEABLE | RS400_PTE_READABLE;
	entry = FUNC0(entry);
	gtt[i] = entry;
	return 0;
}