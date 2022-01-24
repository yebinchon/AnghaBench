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
typedef  unsigned long phys_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long PMD_MASK ; 
 unsigned long PMD_SIZE ; 
 unsigned long _PAGE_GLOBAL ; 
 unsigned long _PAGE_PRESENT ; 
 unsigned long __READABLE ; 
 unsigned long __WRITEABLE ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC7(pte_t * pte, unsigned long address,
	phys_t size, phys_t phys_addr, unsigned long flags)
{
	phys_t end;
	unsigned long pfn;
	pgprot_t pgprot = FUNC2(_PAGE_GLOBAL | _PAGE_PRESENT | __READABLE
	                           | __WRITEABLE | flags);

	address &= ~PMD_MASK;
	end = address + size;
	if (end > PMD_SIZE)
		end = PMD_SIZE;
	FUNC1(address >= end);
	pfn = phys_addr >> PAGE_SHIFT;
	do {
		if (!FUNC5(*pte)) {
			FUNC4("remap_area_pte: page already exists\n");
			FUNC0();
		}
		FUNC6(pte, FUNC3(pfn, pgprot));
		address += PAGE_SIZE;
		pfn++;
		pte++;
	} while (address && (address < end));
}