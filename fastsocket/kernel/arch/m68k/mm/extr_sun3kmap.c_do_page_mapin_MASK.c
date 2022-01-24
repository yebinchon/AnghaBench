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
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(unsigned long phys, unsigned long virt,
				 unsigned long type)
{
	unsigned long pte;
	pte_t ptep;

	ptep = FUNC0(phys >> PAGE_SHIFT, PAGE_KERNEL);
	pte = FUNC2(ptep);
	pte |= type;

	FUNC3(virt, pte);

#ifdef SUN3_KMAP_DEBUG
	print_pte_vaddr(virt);
#endif

}