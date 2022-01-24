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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  iommu_bitmap_lock ; 
 int /*<<< orphan*/  iommu_gart_bitmap ; 
 unsigned long next_bit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(unsigned long offset, int size)
{
	unsigned long flags;

	FUNC1(&iommu_bitmap_lock, flags);
	FUNC0(iommu_gart_bitmap, offset, size);
	if (offset >= next_bit)
		next_bit = offset + size;
	FUNC2(&iommu_bitmap_lock, flags);
}