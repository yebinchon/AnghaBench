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
struct host_vm_change {scalar_t__ force; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long STUB_END ; 
 unsigned long STUB_START ; 
 int UM_PROT_EXEC ; 
 int UM_PROT_READ ; 
 int UM_PROT_WRITE ; 
 int FUNC0 (unsigned long,int,scalar_t__,int,struct host_vm_change*) ; 
 int FUNC1 (unsigned long,scalar_t__,int,struct host_vm_change*) ; 
 int FUNC2 (unsigned long,scalar_t__,struct host_vm_change*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC14(pmd_t *pmd, unsigned long addr,
				   unsigned long end,
				   struct host_vm_change *hvc)
{
	pte_t *pte;
	int r, w, x, prot, ret = 0;

	pte = FUNC8(pmd, addr);
	do {
		if ((addr >= STUB_START) && (addr < STUB_END))
			continue;

		r = FUNC10(*pte);
		w = FUNC12(*pte);
		x = FUNC4(*pte);
		if (!FUNC13(*pte)) {
			r = 0;
			w = 0;
		} else if (!FUNC3(*pte))
			w = 0;

		prot = ((r ? UM_PROT_READ : 0) | (w ? UM_PROT_WRITE : 0) |
			(x ? UM_PROT_EXEC : 0));
		if (hvc->force || FUNC6(*pte)) {
			if (FUNC9(*pte))
				ret = FUNC0(addr, FUNC11(*pte) & PAGE_MASK,
					       PAGE_SIZE, prot, hvc);
			else
				ret = FUNC2(addr, PAGE_SIZE, hvc);
		} else if (FUNC7(*pte))
			ret = FUNC1(addr, PAGE_SIZE, prot, hvc);
		*pte = FUNC5(*pte);
	} while (pte++, addr += PAGE_SIZE, ((addr < end) && !ret));
	return ret;
}