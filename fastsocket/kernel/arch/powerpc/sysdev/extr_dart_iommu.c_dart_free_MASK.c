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
struct iommu_table {scalar_t__ it_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long,long) ; 
 int /*<<< orphan*/  dart_emptyval ; 

__attribute__((used)) static void FUNC1(struct iommu_table *tbl, long index, long npages)
{
	unsigned int *dp;

	/* We don't worry about flushing the TLB cache. The only drawback of
	 * not doing it is that we won't catch buggy device drivers doing
	 * bad DMAs, but then no 32-bit architecture ever does either.
	 */

	FUNC0("dart: free at: %lx, %lx\n", index, npages);

	dp  = ((unsigned int *)tbl->it_base) + index;

	while (npages--)
		*(dp++) = dart_emptyval;
}