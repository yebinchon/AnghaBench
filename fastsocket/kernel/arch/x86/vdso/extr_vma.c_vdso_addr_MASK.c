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
 int /*<<< orphan*/  ALIGN_VDSO ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned int PAGE_SHIFT ; 
 unsigned long PMD_MASK ; 
 unsigned long PMD_SIZE ; 
 int PTRS_PER_PTE ; 
 unsigned long TASK_SIZE_MAX ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 

__attribute__((used)) static unsigned long FUNC3(unsigned long start, unsigned len)
{
	unsigned long addr, end;
	unsigned offset;
	end = (start + PMD_SIZE - 1) & PMD_MASK;
	if (end >= TASK_SIZE_MAX)
		end = TASK_SIZE_MAX;
	end -= len;
	/* This loses some more bits than a modulo, but is cheaper */
	offset = FUNC2() & (PTRS_PER_PTE - 1);
	addr = start + (offset << PAGE_SHIFT);
	if (addr >= end)
		addr = end;

	/*
	 * page-align it here so that get_unmapped_area doesn't
	 * align it wrongfully again to the next page. addr can come in 4K
	 * unaligned here as a result of stack start randomization.
	 */
	addr = FUNC0(addr);
	addr = FUNC1(addr, NULL, ALIGN_VDSO);

	return addr;
}