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
 int MAX_DOMAIN_ID ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amd_iommu_devtable_lock ; 
 int /*<<< orphan*/  amd_iommu_pd_alloc_bitmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(int id)
{
	unsigned long flags;

	FUNC1(&amd_iommu_devtable_lock, flags);
	if (id > 0 && id < MAX_DOMAIN_ID)
		FUNC0(id, amd_iommu_pd_alloc_bitmap);
	FUNC2(&amd_iommu_devtable_lock, flags);
}