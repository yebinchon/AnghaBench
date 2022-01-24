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
struct dma_ops_domain {unsigned long next_address; int need_flush; struct aperture_range** aperture; } ;
struct aperture_range {int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 unsigned int APERTURE_MAX_RANGES ; 
 unsigned long APERTURE_RANGE_SHIFT ; 
 unsigned long APERTURE_RANGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct dma_ops_domain *dom,
				   unsigned long address,
				   unsigned int pages)
{
	unsigned i = address >> APERTURE_RANGE_SHIFT;
	struct aperture_range *range = dom->aperture[i];

	FUNC0(i >= APERTURE_MAX_RANGES || range == NULL);

#ifdef CONFIG_IOMMU_STRESS
	if (i < 4)
		return;
#endif

	if (address >= dom->next_address)
		dom->need_flush = true;

	address = (address % APERTURE_RANGE_SIZE) >> PAGE_SHIFT;

	FUNC1(range->bitmap, address, pages);

}