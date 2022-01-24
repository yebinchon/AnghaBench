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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned long PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long PGDIR_MASK ; 
 int PGDIR_SIZE ; 
 unsigned long PMD_MASK ; 
 int PMD_SIZE ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 

inline int FUNC10(unsigned long kaddr,
			       unsigned long vaddr, int len)
{
	pgd_t *pgd;
	unsigned long end;
	int ret = 0;

	kaddr &= PAGE_MASK;
	vaddr &= PAGE_MASK;

	end = FUNC0(vaddr + len);

#ifdef DEBUG
	printk("dvma: mapping kern %08lx to virt %08lx\n",
	       kaddr, vaddr);
#endif
	pgd = FUNC4(vaddr);

	do {
		pmd_t *pmd;
		unsigned long end2;

		if((pmd = FUNC5(&init_mm, pgd, vaddr)) == NULL) {
			ret = -ENOMEM;
			goto out;
		}

		if((end & PGDIR_MASK) > (vaddr & PGDIR_MASK))
			end2 = (vaddr + (PGDIR_SIZE-1)) & PGDIR_MASK;
		else
			end2 = end;

		do {
			pte_t *pte;
			unsigned long end3;

			if((pte = FUNC7(pmd, vaddr)) == NULL) {
				ret = -ENOMEM;
				goto out;
			}

			if((end2 & PMD_MASK) > (vaddr & PMD_MASK))
				end3 = (vaddr + (PMD_SIZE-1)) & PMD_MASK;
			else
				end3 = end2;

			do {
#ifdef DEBUG
				printk("mapping %08lx phys to %08lx\n",
				       __pa(kaddr), vaddr);
#endif
				FUNC8(pte, FUNC3(FUNC9(kaddr),
						     PAGE_KERNEL));
				pte++;
				kaddr += PAGE_SIZE;
				vaddr += PAGE_SIZE;
			} while(vaddr < end3);

		} while(vaddr < end2);

	} while(vaddr < end);

	FUNC2();

 out:
	return ret;
}