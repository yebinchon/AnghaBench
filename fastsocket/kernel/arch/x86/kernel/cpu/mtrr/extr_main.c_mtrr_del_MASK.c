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
 unsigned long PAGE_SHIFT ; 
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (int,unsigned long,unsigned long) ; 

int FUNC2(int reg, unsigned long base, unsigned long size)
{
	if (FUNC0(base, size))
		return -EINVAL;
	return FUNC1(reg, base >> PAGE_SHIFT, size >> PAGE_SHIFT);
}