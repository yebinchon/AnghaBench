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
struct protection_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  amd_iommu_devtable_lock ; 
 int amd_iommu_last_bdf ; 
 struct protection_domain** amd_iommu_pd_table ; 
 int /*<<< orphan*/  FUNC0 (int,struct protection_domain*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct protection_domain *domain)
{
	unsigned long flags;
	int i;

	for (i = 0; i <= amd_iommu_last_bdf; ++i) {
		if (amd_iommu_pd_table[i] != domain)
			continue;
		FUNC1(&amd_iommu_devtable_lock, flags);
		FUNC0(i, domain);
		FUNC2(&amd_iommu_devtable_lock, flags);
	}
}