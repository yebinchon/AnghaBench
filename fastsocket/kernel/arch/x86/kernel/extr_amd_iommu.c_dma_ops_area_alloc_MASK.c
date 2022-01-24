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
typedef  unsigned long u64 ;
struct dma_ops_domain {unsigned long next_address; unsigned long aperture_size; TYPE_1__** aperture; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned long offset; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  APERTURE_RANGE_PAGES ; 
 unsigned long APERTURE_RANGE_SHIFT ; 
 unsigned long APERTURE_RANGE_SIZE ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct device*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned int,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC4(struct device *dev,
					struct dma_ops_domain *dom,
					unsigned int pages,
					unsigned long align_mask,
					u64 dma_mask,
					unsigned long start)
{
	unsigned long next_bit = dom->next_address % APERTURE_RANGE_SIZE;
	int max_index = dom->aperture_size >> APERTURE_RANGE_SHIFT;
	int i = start >> APERTURE_RANGE_SHIFT;
	unsigned long boundary_size;
	unsigned long address = -1;
	unsigned long limit;

	next_bit >>= PAGE_SHIFT;

	boundary_size = FUNC0(FUNC1(dev) + 1,
			PAGE_SIZE) >> PAGE_SHIFT;

	for (;i < max_index; ++i) {
		unsigned long offset = dom->aperture[i]->offset >> PAGE_SHIFT;

		if (dom->aperture[i]->offset >= dma_mask)
			break;

		limit = FUNC3(APERTURE_RANGE_PAGES, offset,
					       dma_mask >> PAGE_SHIFT);

		address = FUNC2(dom->aperture[i]->bitmap,
					   limit, next_bit, pages, 0,
					    boundary_size, align_mask);
		if (address != -1) {
			address = dom->aperture[i]->offset +
				  (address << PAGE_SHIFT);
			dom->next_address = address + (pages << PAGE_SHIFT);
			break;
		}

		next_bit = 0;
	}

	return address;
}