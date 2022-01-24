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
typedef  int u64 ;
struct TYPE_2__ {int num_cpu_pages; int* pages_addr; int /*<<< orphan*/  ptr; } ;
struct radeon_device {TYPE_1__ gart; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int RADEON_GPU_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 

void FUNC3(struct radeon_device *rdev)
{
	int i, j, t;
	u64 page_base;

	if (!rdev->gart.ptr) {
		return;
	}
	for (i = 0, t = 0; i < rdev->gart.num_cpu_pages; i++) {
		page_base = rdev->gart.pages_addr[i];
		for (j = 0; j < (PAGE_SIZE / RADEON_GPU_PAGE_SIZE); j++, t++) {
			FUNC1(rdev, t, page_base);
			page_base += RADEON_GPU_PAGE_SIZE;
		}
	}
	FUNC0();
	FUNC2(rdev);
}