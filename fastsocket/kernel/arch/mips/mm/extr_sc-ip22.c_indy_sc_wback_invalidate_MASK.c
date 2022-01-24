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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long SC_LINE ; 
 unsigned long SC_SIZE ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC6(unsigned long addr, unsigned long size)
{
	unsigned long first_line, last_line;
	unsigned long flags;

#ifdef DEBUG_CACHE
	printk("indy_sc_wback_invalidate[%08lx,%08lx]", addr, size);
#endif

	/* Catch bad driver code */
	FUNC0(size == 0);

	/* Which lines to flush?  */
	first_line = FUNC1(addr);
	last_line = FUNC1(addr + size - 1);

	FUNC4(flags);
	if (first_line <= last_line) {
		FUNC2(first_line, last_line);
		goto out;
	}

	FUNC2(first_line, SC_SIZE - SC_LINE);
	FUNC2(0, last_line);
out:
	FUNC3(flags);
}