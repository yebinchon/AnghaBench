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
typedef  unsigned int uint64_t ;
struct TYPE_2__ {unsigned int* pages_addr; scalar_t__ ptr; struct page** pages; int /*<<< orphan*/  ready; } ;
struct radeon_device {TYPE_1__ gart; } ;
struct page {int dummy; } ;
typedef  unsigned int dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int PAGE_SIZE ; 
 unsigned int RADEON_GPU_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 

int FUNC4(struct radeon_device *rdev, unsigned offset,
		     int pages, struct page **pagelist, dma_addr_t *dma_addr)
{
	unsigned t;
	unsigned p;
	uint64_t page_base;
	int i, j;

	if (!rdev->gart.ready) {
		FUNC0(1, "trying to bind memory to uninitialized GART !\n");
		return -EINVAL;
	}
	t = offset / RADEON_GPU_PAGE_SIZE;
	p = t / (PAGE_SIZE / RADEON_GPU_PAGE_SIZE);

	for (i = 0; i < pages; i++, p++) {
		rdev->gart.pages_addr[p] = dma_addr[i];
		rdev->gart.pages[p] = pagelist[i];
		if (rdev->gart.ptr) {
			page_base = rdev->gart.pages_addr[p];
			for (j = 0; j < (PAGE_SIZE / RADEON_GPU_PAGE_SIZE); j++, t++) {
				FUNC2(rdev, t, page_base);
				page_base += RADEON_GPU_PAGE_SIZE;
			}
		}
	}
	FUNC1();
	FUNC3(rdev);
	return 0;
}