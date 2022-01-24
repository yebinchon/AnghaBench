#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  version; int /*<<< orphan*/ * gregs; } ;
struct ucontext {int /*<<< orphan*/  uc_stack; TYPE_2__ uc_mcontext; } ;
struct switch_stack {int d6; int d7; int a3; int a4; int a5; int a6; } ;
struct pt_regs {int d0; int d1; int d2; int d3; int d4; int d5; int a0; int a1; int a2; int pc; int sr; int orig_d0; int format; int vector; } ;
typedef  int /*<<< orphan*/  greg_t ;
struct TYPE_4__ {int /*<<< orphan*/  fn; } ;
struct TYPE_6__ {TYPE_1__ restart_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFAULT ; 
 int MCONTEXT_VERSION ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  do_no_restart_syscall ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static inline int
FUNC4(struct pt_regs *regs, struct switch_stack *sw,
		    struct ucontext *uc, int *pd0)
{
	int temp;
	greg_t *gregs = uc->uc_mcontext.gregs;
	unsigned long usp;
	int err;

	/* Always make any pending restarted system calls return -EINTR */
	FUNC1()->restart_block.fn = do_no_restart_syscall;

	err = FUNC0(temp, &uc->uc_mcontext.version);
	if (temp != MCONTEXT_VERSION)
		goto badframe;
	/* restore passed registers */
	err |= FUNC0(regs->d0, &gregs[0]);
	err |= FUNC0(regs->d1, &gregs[1]);
	err |= FUNC0(regs->d2, &gregs[2]);
	err |= FUNC0(regs->d3, &gregs[3]);
	err |= FUNC0(regs->d4, &gregs[4]);
	err |= FUNC0(regs->d5, &gregs[5]);
	err |= FUNC0(sw->d6, &gregs[6]);
	err |= FUNC0(sw->d7, &gregs[7]);
	err |= FUNC0(regs->a0, &gregs[8]);
	err |= FUNC0(regs->a1, &gregs[9]);
	err |= FUNC0(regs->a2, &gregs[10]);
	err |= FUNC0(sw->a3, &gregs[11]);
	err |= FUNC0(sw->a4, &gregs[12]);
	err |= FUNC0(sw->a5, &gregs[13]);
	err |= FUNC0(sw->a6, &gregs[14]);
	err |= FUNC0(usp, &gregs[15]);
	FUNC3(usp);
	err |= FUNC0(regs->pc, &gregs[16]);
	err |= FUNC0(temp, &gregs[17]);
	regs->sr = (regs->sr & 0xff00) | (temp & 0xff);
	regs->orig_d0 = -1;		/* disable syscall checks */
	regs->format = temp >> 12;
	regs->vector = temp & 0xfff;

	if (FUNC2(&uc->uc_stack, NULL, usp) == -EFAULT)
		goto badframe;

	*pd0 = regs->d0;
	return err;

badframe:
	return 1;
}