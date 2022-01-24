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
struct dmar_domain {int /*<<< orphan*/ * pgd; int /*<<< orphan*/  gaw; int /*<<< orphan*/  agaw; } ;
struct dma_pte {int dummy; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int VTD_PAGE_SHIFT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_pte*) ; 
 struct dma_pte* FUNC6 (struct dmar_domain*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_pte*) ; 
 scalar_t__ FUNC8 (struct dma_pte*) ; 
 int /*<<< orphan*/  FUNC9 (struct dmar_domain*,struct dma_pte*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dma_pte*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC12 (int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct dmar_domain *domain,
				   unsigned long start_pfn,
				   unsigned long last_pfn)
{
	int addr_width = FUNC3(domain->agaw) - VTD_PAGE_SHIFT;
	struct dma_pte *first_pte, *pte;
	int total = FUNC2(domain->agaw);
	int level;
	unsigned long tmp;

	FUNC0(addr_width < BITS_PER_LONG && start_pfn >> addr_width);
	FUNC0(addr_width < BITS_PER_LONG && last_pfn >> addr_width);
	FUNC0(start_pfn > last_pfn);

	/* We don't need lock here; nobody else touches the iova range */
	level = 2;
	while (level <= total) {
		tmp = FUNC4(start_pfn, level);

		/* If we can't even clear one PTE at this level, we're done */
		if (tmp + FUNC12(level) - 1 > last_pfn)
			return;

		do {
			first_pte = pte = FUNC6(domain, tmp, level);
			if (!pte) {
				tmp = FUNC4(tmp + 1, level + 1);
				continue;
			}
			do {
				if (FUNC8(pte)) {
					FUNC11(FUNC13(FUNC7(pte)));
					FUNC5(pte);
				}
				pte++;
				tmp += FUNC12(level);
			} while (!FUNC10(pte) &&
				 tmp + FUNC12(level) - 1 <= last_pfn);

			FUNC9(domain, first_pte,
					   (void *)pte - (void *)first_pte);
			
		} while (tmp && tmp + FUNC12(level) - 1 <= last_pfn);
		level++;
	}
	/* free pgd */
	if (start_pfn == 0 && last_pfn == FUNC1(domain->gaw)) {
		FUNC11(domain->pgd);
		domain->pgd = NULL;
	}
}