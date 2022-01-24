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
 int EINVAL ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long RGN_MAP_LIMIT ; 

int FUNC1(unsigned long addr, unsigned long len,
		unsigned long flags)
{
	unsigned long roff;

	/*
	 * Don't permit mappings into unmapped space, the virtual page table
	 * of a region, or across a region boundary.  Note: RGN_MAP_LIMIT is
	 * equal to 2^n-PAGE_SIZE (for some integer n <= 61) and len > 0.
	 */
	roff = FUNC0(addr);
	if ((len > RGN_MAP_LIMIT) || (roff > (RGN_MAP_LIMIT - len)))
		return -EINVAL;
	return 0;
}