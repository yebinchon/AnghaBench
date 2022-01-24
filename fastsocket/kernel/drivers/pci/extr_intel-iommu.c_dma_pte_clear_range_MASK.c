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
struct dmar_domain {int /*<<< orphan*/  agaw; } ;
struct dma_pte {int dummy; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VTD_PAGE_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_pte*) ; 
 struct dma_pte* FUNC4 (struct dmar_domain*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_domain*,struct dma_pte*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_pte*) ; 

__attribute__((used)) static void FUNC7(struct dmar_domain *domain,
				unsigned long start_pfn,
				unsigned long last_pfn)
{
	int addr_width = FUNC1(domain->agaw) - VTD_PAGE_SHIFT;
	struct dma_pte *first_pte, *pte;

	FUNC0(addr_width < BITS_PER_LONG && start_pfn >> addr_width);
	FUNC0(addr_width < BITS_PER_LONG && last_pfn >> addr_width);
	FUNC0(start_pfn > last_pfn);

	/* we don't need lock here; nobody else touches the iova range */
	do {
		first_pte = pte = FUNC4(domain, start_pfn, 1);
		if (!pte) {
			start_pfn = FUNC2(start_pfn + 1, 2);
			continue;
		}
		do { 
			FUNC3(pte);
			start_pfn++;
			pte++;
		} while (start_pfn <= last_pfn && !FUNC6(pte));

		FUNC5(domain, first_pte,
				   (void *)pte - (void *)first_pte);

	} while (start_pfn && start_pfn <= last_pfn);
}