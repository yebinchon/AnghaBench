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
 int /*<<< orphan*/  PTRACE_GETREGS ; 
 int errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,unsigned long*) ; 

int FUNC1(long pid, unsigned long *regs_out)
{
	if (FUNC0(PTRACE_GETREGS, pid, 0, regs_out) < 0)
		return -errno;
	return(0);
}