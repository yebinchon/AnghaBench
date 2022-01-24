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
struct intel_iommu {int dummy; } ;
struct dmar_domain {int flags; int /*<<< orphan*/  iommu_bmp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DOMAIN_FLAG_STATIC_IDENTITY ; 
 int DOMAIN_FLAG_VIRTUAL_MACHINE ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct intel_iommu** g_iommus ; 
 int g_num_of_iommus ; 

__attribute__((used)) static struct intel_iommu *FUNC2(struct dmar_domain *domain)
{
	int iommu_id;

	/* si_domain and vm domain should not get here. */
	FUNC0(domain->flags & DOMAIN_FLAG_VIRTUAL_MACHINE);
	FUNC0(domain->flags & DOMAIN_FLAG_STATIC_IDENTITY);

	iommu_id = FUNC1(domain->iommu_bmp, g_num_of_iommus);
	if (iommu_id < 0 || iommu_id >= g_num_of_iommus)
		return NULL;

	return g_iommus[iommu_id];
}