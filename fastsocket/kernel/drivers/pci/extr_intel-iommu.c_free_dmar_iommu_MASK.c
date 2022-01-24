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
struct intel_iommu {int gcmd; size_t seq_id; struct dmar_domain** domain_ids; struct dmar_domain** domains; scalar_t__ irq; int /*<<< orphan*/  cap; } ;
struct dmar_domain {scalar_t__ iommu_count; int flags; int /*<<< orphan*/  iommu_lock; } ;

/* Variables and functions */
 int DMA_GCMD_TE ; 
 int DOMAIN_FLAG_VIRTUAL_MACHINE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct dmar_domain**) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_domain*) ; 
 int FUNC4 (struct dmar_domain**,int) ; 
 int FUNC5 (struct dmar_domain**,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct intel_iommu*) ; 
 struct dmar_domain** g_iommus ; 
 int g_num_of_iommus ; 
 int /*<<< orphan*/  FUNC8 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC9 (struct dmar_domain**) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct dmar_domain*) ; 

void FUNC14(struct intel_iommu *iommu)
{
	struct dmar_domain *domain;
	int i;
	unsigned long flags;

	if ((iommu->domains) && (iommu->domain_ids)) {
		i = FUNC4(iommu->domain_ids, FUNC0(iommu->cap));
		for (; i < FUNC0(iommu->cap); ) {
			domain = iommu->domains[i];
			FUNC1(i, iommu->domain_ids);

			FUNC11(&domain->iommu_lock, flags);
			if (--domain->iommu_count == 0) {
				if (domain->flags & DOMAIN_FLAG_VIRTUAL_MACHINE)
					FUNC13(domain);
				else
					FUNC3(domain);
			}
			FUNC12(&domain->iommu_lock, flags);

			i = FUNC5(iommu->domain_ids,
				FUNC0(iommu->cap), i+1);
		}
	}

	if (iommu->gcmd & DMA_GCMD_TE)
		FUNC8(iommu);

	if (iommu->irq) {
		FUNC10(iommu->irq, NULL);
		/* This will mask the irq */
		FUNC7(iommu->irq, iommu);
		FUNC2(iommu->irq);
	}

	FUNC9(iommu->domains);
	FUNC9(iommu->domain_ids);

	g_iommus[iommu->seq_id] = NULL;

	/* if all iommus are freed, free g_iommus */
	for (i = 0; i < g_num_of_iommus; i++) {
		if (g_iommus[i])
			break;
	}

	if (i == g_num_of_iommus)
		FUNC9(g_iommus);

	/* free context mapping */
	FUNC6(iommu);
}