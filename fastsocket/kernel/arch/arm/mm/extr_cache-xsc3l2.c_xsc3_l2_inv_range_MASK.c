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
 int CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

__attribute__((used)) static void FUNC7(unsigned long start, unsigned long end)
{
	unsigned long vaddr, flags;

	if (start == 0 && end == -1ul) {
		FUNC5();
		return;
	}

	vaddr = -1;  /* to force the first mapping */
	FUNC2(flags);

	/*
	 * Clean and invalidate partial first cache line.
	 */
	if (start & (CACHE_LINE_SIZE - 1)) {
		vaddr = FUNC3(start & ~(CACHE_LINE_SIZE - 1), vaddr, flags);
		FUNC4(vaddr);
		FUNC6(vaddr);
		start = (start | (CACHE_LINE_SIZE - 1)) + 1;
	}

	/*
	 * Invalidate all full cache lines between 'start' and 'end'.
	 */
	while (start < (end & ~(CACHE_LINE_SIZE - 1))) {
		vaddr = FUNC3(start, vaddr, flags);
		FUNC6(vaddr);
		start += CACHE_LINE_SIZE;
	}

	/*
	 * Clean and invalidate partial last cache line.
	 */
	if (start < end) {
		vaddr = FUNC3(start, vaddr, flags);
		FUNC4(vaddr);
		FUNC6(vaddr);
	}

	FUNC1(flags);

	FUNC0();
}