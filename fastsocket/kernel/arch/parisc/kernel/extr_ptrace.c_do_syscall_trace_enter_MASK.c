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
struct pt_regs {long* gr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_SYSCALL_TRACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pt_regs*) ; 

long FUNC2(struct pt_regs *regs)
{
	if (FUNC0(TIF_SYSCALL_TRACE) &&
	    FUNC1(regs))
		return -1L;

	return regs->gr[20];
}