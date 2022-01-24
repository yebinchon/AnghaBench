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
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_DOMAIN_ID ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amd_iommu_devtable_lock ; 
 int /*<<< orphan*/  amd_iommu_pd_alloc_bitmap ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u16 FUNC5(void)
{
	unsigned long flags;
	int id;

	FUNC3(&amd_iommu_devtable_lock, flags);
	id = FUNC2(amd_iommu_pd_alloc_bitmap, MAX_DOMAIN_ID);
	FUNC0(id == 0);
	if (id > 0 && id < MAX_DOMAIN_ID)
		FUNC1(id, amd_iommu_pd_alloc_bitmap);
	else
		id = 0;
	FUNC4(&amd_iommu_devtable_lock, flags);

	return id;
}