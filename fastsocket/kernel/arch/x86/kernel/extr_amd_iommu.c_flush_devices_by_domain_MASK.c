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
struct amd_iommu {int dummy; } ;

/* Variables and functions */
 unsigned long amd_iommu_last_bdf ; 
 struct protection_domain** amd_iommu_pd_table ; 
 struct amd_iommu** amd_iommu_rlookup_table ; 
 int /*<<< orphan*/  FUNC0 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC1 (struct amd_iommu*,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct protection_domain *domain)
{
	struct amd_iommu *iommu;
	unsigned long i;

	for (i = 0; i <= amd_iommu_last_bdf; ++i) {
		if ((domain == NULL && amd_iommu_pd_table[i] == NULL) ||
		    (domain != NULL && amd_iommu_pd_table[i] != domain))
			continue;

		iommu = amd_iommu_rlookup_table[i];
		if (!iommu)
			continue;

		FUNC1(iommu, i);
		FUNC0(iommu);
	}
}