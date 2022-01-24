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

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 unsigned long FUNC0 (int) ; 
 unsigned long SUN4C_REAL_PGDIR_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 unsigned long sun4c_iobuffer_high ; 
 int /*<<< orphan*/ * sun4c_iobuffer_map ; 
 unsigned long sun4c_iobuffer_start ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(char *vaddr, unsigned long size)
{
	unsigned long vpage, npages;
	unsigned long flags;
	int scan, high;

	vpage = (unsigned long)vaddr & PAGE_MASK;
	npages = (((unsigned long)vaddr & ~PAGE_MASK) +
		  size + (PAGE_SIZE-1)) >> PAGE_SHIFT;

	FUNC4(flags);
	while (npages != 0) {
		--npages;

		/* This mapping is marked non-cachable, no flush necessary. */
		FUNC5(vpage, 0);
		FUNC1((vpage - sun4c_iobuffer_start) >> PAGE_SHIFT,
			  sun4c_iobuffer_map);
		vpage += PAGE_SIZE;
	}

	/* garbage collect */
	scan = (sun4c_iobuffer_high - sun4c_iobuffer_start) >> PAGE_SHIFT;
	while (scan >= 0 && !sun4c_iobuffer_map[scan >> 5])
		scan -= 32;
	scan += 32;
	high = sun4c_iobuffer_start + (scan << PAGE_SHIFT);
	high = FUNC0(high) + SUN4C_REAL_PGDIR_SIZE;
	while (high < sun4c_iobuffer_high) {
		sun4c_iobuffer_high -= SUN4C_REAL_PGDIR_SIZE;
		FUNC2(sun4c_iobuffer_high);
	}
	FUNC3(flags);
}