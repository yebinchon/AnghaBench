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
 scalar_t__ have_fpx_regs ; 
 int FUNC0 (int,unsigned long*) ; 
 int FUNC1 (int,unsigned long*) ; 

int FUNC2(int pid, unsigned long *regs)
{
	if (have_fpx_regs)
		return FUNC1(pid, regs);
	else
		return FUNC0(pid, regs);
}