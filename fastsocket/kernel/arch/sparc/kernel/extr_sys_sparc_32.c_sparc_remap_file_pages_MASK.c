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
 int PAGE_SHIFT ; 
 long FUNC0 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 

long FUNC1(unsigned long start, unsigned long size,
			   unsigned long prot, unsigned long pgoff,
			   unsigned long flags)
{
	/* This works on an existing mmap so we don't need to validate
	 * the range as that was done at the original mmap call.
	 */
	return FUNC0(start, size, prot,
				    (pgoff >> (PAGE_SHIFT - 12)), flags);
}