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
typedef  int /*<<< orphan*/  xmaddr_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  unsigned int phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long PAGE_MASK ; 
 unsigned int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned long,unsigned int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

xmaddr_t FUNC6(void *vaddr)
{
	unsigned long address = (unsigned long)vaddr;
	unsigned int level;
	pte_t *pte;
	unsigned offset;

	/*
	 * if the PFN is in the linear mapped vaddr range, we can just use
	 * the (quick) virt_to_machine() p2m lookup
	 */
	if (FUNC4(vaddr))
		return FUNC5(vaddr);

	/* otherwise we have to do a (slower) full page-table walk */

	pte = FUNC2(address, &level);
	FUNC0(pte == NULL);
	offset = address & ~PAGE_MASK;
	return FUNC1(((phys_addr_t)FUNC3(*pte) << PAGE_SHIFT) + offset);
}