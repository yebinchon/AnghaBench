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
struct intel_iommu {int /*<<< orphan*/  ecap; int /*<<< orphan*/  cap; } ;
struct dmar_domain {int gaw; int agaw; int iommu_coherency; int iommu_snooping; int iommu_count; struct dma_pte* pgd; int /*<<< orphan*/  devices; int /*<<< orphan*/  iommu_lock; int /*<<< orphan*/  iovad; } ;
struct dma_pte {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_32BIT_PFN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct intel_iommu*,struct dma_pte*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 struct intel_iommu* FUNC5 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_domain*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (unsigned long*,int,int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,unsigned long*) ; 
 int FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct dmar_domain *domain, int guest_width)
{
	struct intel_iommu *iommu;
	int adjust_width, agaw;
	unsigned long sagaw;

	FUNC11(&domain->iovad, DMA_32BIT_PFN);
	FUNC13(&domain->iommu_lock);

	FUNC6(domain);

	/* calculate AGAW */
	iommu = FUNC5(domain);
	if (guest_width > FUNC3(iommu->cap))
		guest_width = FUNC3(iommu->cap);
	domain->gaw = guest_width;
	adjust_width = FUNC10(guest_width);
	agaw = FUNC15(adjust_width);
	sagaw = FUNC4(iommu->cap);
	if (!FUNC14(agaw, &sagaw)) {
		/* hardware doesn't support it, choose a bigger one */
		FUNC12("IOMMU: hardware doesn't support agaw %d\n", agaw);
		agaw = FUNC9(&sagaw, 5, agaw);
		if (agaw >= 5)
			return -ENODEV;
	}
	domain->agaw = agaw;
	FUNC0(&domain->devices);

	if (FUNC7(iommu->ecap))
		domain->iommu_coherency = 1;
	else
		domain->iommu_coherency = 0;

	if (FUNC8(iommu->ecap))
		domain->iommu_snooping = 1;
	else
		domain->iommu_snooping = 0;

	domain->iommu_count = 1;

	/* always allocate the top pgd */
	domain->pgd = (struct dma_pte *)FUNC2();
	if (!domain->pgd)
		return -ENOMEM;
	FUNC1(iommu, domain->pgd, PAGE_SIZE);
	return 0;
}