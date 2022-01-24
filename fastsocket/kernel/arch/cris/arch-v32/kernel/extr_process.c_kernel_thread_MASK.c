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
struct pt_regs {unsigned long r11; unsigned long r12; unsigned long erp; int ccs; } ;
typedef  int /*<<< orphan*/  regs ;

/* Variables and functions */
 int CCS_SHIFT ; 
 unsigned long CLONE_UNTRACED ; 
 unsigned long CLONE_VM ; 
 int I_CCS_BITNR ; 
 int FUNC0 (unsigned long,int /*<<< orphan*/ ,struct pt_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ kernel_thread_helper ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,int /*<<< orphan*/ ,int) ; 

int
FUNC2(int (*fn)(void *), void * arg, unsigned long flags)
{
	struct pt_regs regs;

	FUNC1(&regs, 0, sizeof(regs));

        /* Don't use r10 since that is set to 0 in copy_thread. */
	regs.r11 = (unsigned long) fn;
	regs.r12 = (unsigned long) arg;
	regs.erp = (unsigned long) kernel_thread_helper;
	regs.ccs = 1 << (I_CCS_BITNR + CCS_SHIFT);

	/* Create the new process. */
        return FUNC0(flags | CLONE_VM | CLONE_UNTRACED, 0, &regs, 0, NULL, NULL);
}