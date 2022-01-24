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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

unsigned long long FUNC2(volatile void *ptr, u64 old, u64 new)
{
	u64 prev;
	unsigned long flags;

	/* Poor man's cmpxchg8b for 386 and 486. Unsuitable for SMP */
	FUNC1(flags);
	prev = *(u64 *)ptr;
	if (prev == old)
		*(u64 *)ptr = new;
	FUNC0(flags);
	return prev;
}