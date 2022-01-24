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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (char*,struct pt_regs*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 

int FUNC2(unsigned long scId, struct pt_regs *regs)
{
	/* Syscall debug */
        FUNC1("System call ID error: [0x1#args:8 #syscall:16  0x%lx]\n", scId);

	FUNC0("unknown trapa", regs, scId);

	return -ENOSYS;
}