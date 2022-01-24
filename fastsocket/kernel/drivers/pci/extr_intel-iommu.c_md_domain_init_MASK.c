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
struct dmar_domain {int gaw; struct dma_pte* pgd; scalar_t__ max_addr; scalar_t__ iommu_snooping; scalar_t__ iommu_coherency; scalar_t__ iommu_count; int /*<<< orphan*/  devices; int /*<<< orphan*/  agaw; int /*<<< orphan*/  iommu_lock; int /*<<< orphan*/  iovad; } ;
struct dma_pte {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_32BIT_PFN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_domain*,struct dma_pte*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_domain*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct dmar_domain *domain, int guest_width)
{
	int adjust_width;

	FUNC5(&domain->iovad, DMA_32BIT_PFN);
	FUNC6(&domain->iommu_lock);

	FUNC3(domain);

	/* calculate AGAW */
	domain->gaw = guest_width;
	adjust_width = FUNC4(guest_width);
	domain->agaw = FUNC7(adjust_width);

	FUNC0(&domain->devices);

	domain->iommu_count = 0;
	domain->iommu_coherency = 0;
	domain->iommu_snooping = 0;
	domain->max_addr = 0;

	/* always allocate the top pgd */
	domain->pgd = (struct dma_pte *)FUNC1();
	if (!domain->pgd)
		return -ENOMEM;
	FUNC2(domain, domain->pgd, PAGE_SIZE);
	return 0;
}