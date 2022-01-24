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
typedef  int /*<<< orphan*/  u64 ;
struct dma_ops_domain {int /*<<< orphan*/  domain; struct aperture_range** aperture; } ;
struct aperture_range {int /*<<< orphan*/ ** pte_pages; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned long) ; 
 size_t FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  PM_MAP_4k ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u64* FUNC5(struct dma_ops_domain *dom,
			    unsigned long address)
{
	struct aperture_range *aperture;
	u64 *pte, *pte_page;

	aperture = dom->aperture[FUNC1(address)];
	if (!aperture)
		return NULL;

	pte = aperture->pte_pages[FUNC0(address)];
	if (!pte) {
		pte = FUNC3(&dom->domain, address, PM_MAP_4k, &pte_page,
				GFP_ATOMIC);
		aperture->pte_pages[FUNC0(address)] = pte_page;
	} else
		pte += FUNC2(0, address);

	FUNC4(&dom->domain);

	return pte;
}