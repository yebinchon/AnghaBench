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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long PGDIR_MASK ; 
 unsigned long PGDIR_SIZE ; 
 unsigned long PMD_MASK ; 
 unsigned long PMD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 

__attribute__((used)) static inline void FUNC6(pgd_t * dir, unsigned long vaddr,
		unsigned long size)
{
	pmd_t * pmd;
	unsigned long end;
	unsigned long orig_vaddr = vaddr;

	if (FUNC3(*dir))
		return;
	if (FUNC1(*dir)) {
		FUNC0(*dir);
		FUNC2(dir);
		return;
	}
	pmd = FUNC4(dir, vaddr);
	vaddr &= ~PGDIR_MASK;
	end = vaddr + size;
	if (end > PGDIR_SIZE)
		end = PGDIR_SIZE;
	do {
		FUNC5(pmd, orig_vaddr, end - vaddr);
		vaddr = (vaddr + PMD_SIZE) & PMD_MASK;
		orig_vaddr += PMD_SIZE;
		pmd++;
	} while (vaddr < end);
}