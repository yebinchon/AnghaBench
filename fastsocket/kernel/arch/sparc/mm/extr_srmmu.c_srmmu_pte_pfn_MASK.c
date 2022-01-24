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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int SRMMU_PTE_PMASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static unsigned long FUNC2(pte_t pte)
{
	if (FUNC1(FUNC0(pte))) {
		/* Just return something that will cause
		 * pfn_valid() to return false.  This makes
		 * copy_one_pte() to just directly copy to
		 * PTE over.
		 */
		return ~0UL;
	}
	return (FUNC0(pte) & SRMMU_PTE_PMASK) >> (PAGE_SHIFT-4);
}