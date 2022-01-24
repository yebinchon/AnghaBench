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
typedef  int /*<<< orphan*/  u64 ;
struct iommu {unsigned long iommu_flushinv; unsigned long iommu_tags; int /*<<< orphan*/  write_complete_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct iommu *iommu)
{
	if (iommu->iommu_flushinv) {
		FUNC1(iommu->iommu_flushinv, ~(u64)0);
	} else {
		unsigned long tag;
		int entry;

		tag = iommu->iommu_tags;
		for (entry = 0; entry < 16; entry++) {
			FUNC1(tag, 0);
			tag += 8;
		}

		/* Ensure completion of previous PIO writes. */
		(void) FUNC0(iommu->write_complete_reg);
	}
}