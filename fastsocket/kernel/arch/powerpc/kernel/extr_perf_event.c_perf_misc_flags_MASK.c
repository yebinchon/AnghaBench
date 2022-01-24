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
typedef  unsigned long u32 ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 unsigned long PERF_RECORD_MISC_KERNEL ; 
 unsigned long PERF_RECORD_MISC_USER ; 
 unsigned long FUNC0 (struct pt_regs*) ; 
 scalar_t__ FUNC1 (struct pt_regs*) ; 

unsigned long FUNC2(struct pt_regs *regs)
{
	u32 flags = FUNC0(regs);

	if (flags)
		return flags;
	return FUNC1(regs) ? PERF_RECORD_MISC_USER :
		PERF_RECORD_MISC_KERNEL;
}