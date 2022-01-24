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
 scalar_t__ PAGE_SHIFT ; 
 unsigned long FUNC0 (unsigned long,size_t,unsigned long,unsigned long,unsigned long,unsigned long,scalar_t__) ; 

unsigned long FUNC1(unsigned long addr, size_t len,
			unsigned long prot, unsigned long flags,
			unsigned long fd, unsigned long pgoff)
{
	return FUNC0(addr, len, prot, flags, fd, pgoff, PAGE_SHIFT-12);
}