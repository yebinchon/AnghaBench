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
 int /*<<< orphan*/  FUNC0 (unsigned long,int,unsigned long,unsigned long) ; 

__attribute__((used)) static inline void FUNC1(unsigned long ea, int ssize,
					unsigned long flags,
					unsigned long entry)
{
	/*
	 * Updating the shadow buffer before writing the SLB ensures
	 * we don't get a stale entry here if we get preempted by PHYP
	 * between these two statements.
	 */
	FUNC0(ea, ssize, flags, entry);

	asm volatile("slbmte  %0,%1" :
		     : "r" (FUNC0(ea, ssize, flags)),
		       "r" (FUNC0(ea, ssize, entry))
		     : "memory" );
}