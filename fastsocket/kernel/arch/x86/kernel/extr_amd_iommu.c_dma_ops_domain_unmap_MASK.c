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
typedef  unsigned long long u64 ;
struct dma_ops_domain {unsigned long aperture_size; struct aperture_range** aperture; } ;
struct aperture_range {unsigned long long** pte_pages; } ;
struct amd_iommu {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned long) ; 
 size_t FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct amd_iommu *iommu,
				 struct dma_ops_domain *dom,
				 unsigned long address)
{
	struct aperture_range *aperture;
	u64 *pte;

	if (address >= dom->aperture_size)
		return;

	aperture = dom->aperture[FUNC1(address)];
	if (!aperture)
		return;

	pte  = aperture->pte_pages[FUNC0(address)];
	if (!pte)
		return;

	pte += FUNC2(0, address);

	FUNC3(!*pte);

	*pte = 0ULL;
}