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
struct dmar_domain {struct dma_pte* pgd; int /*<<< orphan*/  agaw; } ;
struct dma_pte {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_pte*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_pte*) ; 
 int FUNC3 (unsigned long,int) ; 
 struct dma_pte* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dma_pte *FUNC5(struct dmar_domain *domain,
					 unsigned long pfn,
					 int level)
{
	struct dma_pte *parent, *pte = NULL;
	int total = FUNC0(domain->agaw);
	int offset;

	parent = domain->pgd;
	while (level <= total) {
		offset = FUNC3(pfn, total);
		pte = &parent[offset];
		if (level == total)
			return pte;

		if (!FUNC2(pte))
			break;
		parent = FUNC4(FUNC1(pte));
		total--;
	}
	return NULL;
}