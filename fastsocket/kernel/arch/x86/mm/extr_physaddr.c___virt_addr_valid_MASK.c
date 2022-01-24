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
 unsigned long FIXADDR_START ; 
 unsigned long PAGE_OFFSET ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ __vmalloc_start_set ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (unsigned long) ; 

bool FUNC2(unsigned long x)
{
	if (x < PAGE_OFFSET)
		return false;
	if (__vmalloc_start_set && FUNC0((void *) x))
		return false;
	if (x >= FIXADDR_START)
		return false;
	return FUNC1((x - PAGE_OFFSET) >> PAGE_SHIFT);
}