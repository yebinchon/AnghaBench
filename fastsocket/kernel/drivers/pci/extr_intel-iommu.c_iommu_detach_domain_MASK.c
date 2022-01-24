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
struct intel_iommu {int seq_id; int /*<<< orphan*/  lock; struct dmar_domain** domains; int /*<<< orphan*/  domain_ids; int /*<<< orphan*/  cap; } ;
struct dmar_domain {int /*<<< orphan*/  iommu_bmp; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct dmar_domain *domain,
				struct intel_iommu *iommu)
{
	unsigned long flags;
	int num, ndomains;
	int found = 0;

	FUNC4(&iommu->lock, flags);
	ndomains = FUNC0(iommu->cap);
	num = FUNC2(iommu->domain_ids, ndomains);
	for (; num < ndomains; ) {
		if (iommu->domains[num] == domain) {
			found = 1;
			break;
		}
		num = FUNC3(iommu->domain_ids,
				    FUNC0(iommu->cap), num+1);
	}

	if (found) {
		FUNC1(num, iommu->domain_ids);
		FUNC1(iommu->seq_id, domain->iommu_bmp);
		iommu->domains[num] = NULL;
	}
	FUNC5(&iommu->lock, flags);
}