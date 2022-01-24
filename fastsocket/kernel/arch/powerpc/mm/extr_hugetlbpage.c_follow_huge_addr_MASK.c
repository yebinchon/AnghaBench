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
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SIZE ; 
 unsigned int FUNC1 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * mmu_huge_psizes ; 
 unsigned int FUNC3 (unsigned int) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 

struct page *
FUNC5(struct mm_struct *mm, unsigned long address, int write)
{
	pte_t *ptep;
	struct page *page;
	unsigned int mmu_psize = FUNC1(mm, address);

	/* Verify it is a huge page else bail. */
	if (!mmu_huge_psizes[mmu_psize])
		return FUNC0(-EINVAL);

	ptep = FUNC2(mm, address);
	page = FUNC4(*ptep);
	if (page) {
		unsigned int shift = FUNC3(mmu_psize);
		unsigned long sz = ((1UL) << shift);
		page += (address % sz) / PAGE_SIZE;
	}

	return page;
}