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
 unsigned long PAGE_OFFSET ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  SUN4C_PAGE_KERNEL ; 
 unsigned long FUNC0 (unsigned long) ; 
 scalar_t__ SUN4C_REAL_PGDIR_SIZE ; 
 unsigned long _SUN4C_PAGE_NOCACHE ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long iobuffer_map_size ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 unsigned long sun4c_iobuffer_high ; 
 int /*<<< orphan*/  sun4c_iobuffer_map ; 
 unsigned long sun4c_iobuffer_start ; 
 int /*<<< orphan*/  FUNC10 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC11 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC12(char *vaddr, unsigned long size)
{
	unsigned long base, scan;
	unsigned long npages;
	unsigned long vpage;
	unsigned long pte;
	unsigned long apage;
	unsigned long high;
	unsigned long flags;

	npages = (((unsigned long)vaddr & ~PAGE_MASK) +
		  size + (PAGE_SIZE-1)) >> PAGE_SHIFT;

	scan = 0;
	FUNC4(flags);
	for (;;) {
		scan = FUNC1(sun4c_iobuffer_map,
					  iobuffer_map_size, scan);
		if ((base = scan) + npages > iobuffer_map_size) goto abend;
		for (;;) {
			if (scan >= base + npages) goto found;
			if (FUNC11(scan, sun4c_iobuffer_map)) break;
			scan++;
		}
	}

found:
	high = ((base + npages) << PAGE_SHIFT) + sun4c_iobuffer_start;
	high = FUNC0(high);
	while (high > sun4c_iobuffer_high) {
		FUNC2(sun4c_iobuffer_high);
		sun4c_iobuffer_high += SUN4C_REAL_PGDIR_SIZE;
	}

	vpage = ((unsigned long) vaddr) & PAGE_MASK;
	for (scan = base; scan < base+npages; scan++) {
		pte = ((vpage-PAGE_OFFSET) >> PAGE_SHIFT);
 		pte |= FUNC6(SUN4C_PAGE_KERNEL);
		pte |= _SUN4C_PAGE_NOCACHE;
		FUNC8(scan, sun4c_iobuffer_map);
		apage = (scan << PAGE_SHIFT) + sun4c_iobuffer_start;

		/* Flush original mapping so we see the right things later. */
		FUNC9(vpage);

		FUNC10(apage, pte);
		vpage += PAGE_SIZE;
	}
	FUNC3(flags);
	return (char *) ((base << PAGE_SHIFT) + sun4c_iobuffer_start +
			 (((unsigned long) vaddr) & ~PAGE_MASK));

abend:
	FUNC3(flags);
	FUNC7("DMA vaddr=0x%p size=%08lx\n", vaddr, size);
	FUNC5("Out of iobuffer table");
	return NULL;
}