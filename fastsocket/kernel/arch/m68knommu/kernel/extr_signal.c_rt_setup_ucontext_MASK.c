#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  version; int /*<<< orphan*/ * gregs; } ;
struct ucontext {TYPE_1__ uc_mcontext; } ;
struct switch_stack {int /*<<< orphan*/  a6; int /*<<< orphan*/  a5; int /*<<< orphan*/  a4; int /*<<< orphan*/  a3; int /*<<< orphan*/  d7; int /*<<< orphan*/  d6; } ;
struct pt_regs {int /*<<< orphan*/  sr; int /*<<< orphan*/  pc; int /*<<< orphan*/  a2; int /*<<< orphan*/  a1; int /*<<< orphan*/  a0; int /*<<< orphan*/  d5; int /*<<< orphan*/  d4; int /*<<< orphan*/  d3; int /*<<< orphan*/  d2; int /*<<< orphan*/  d1; int /*<<< orphan*/  d0; } ;
typedef  int /*<<< orphan*/  greg_t ;

/* Variables and functions */
 int /*<<< orphan*/  MCONTEXT_VERSION ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct ucontext*,struct pt_regs*) ; 

__attribute__((used)) static inline int FUNC3(struct ucontext *uc, struct pt_regs *regs)
{
	struct switch_stack *sw = (struct switch_stack *)regs - 1;
	greg_t *gregs = uc->uc_mcontext.gregs;
	int err = 0;

	err |= FUNC0(MCONTEXT_VERSION, &uc->uc_mcontext.version);
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
	err |= FUNC0(FUNC1(), &gregs[15]);
	err |= FUNC0(regs->pc, &gregs[16]);
	err |= FUNC0(regs->sr, &gregs[17]);
#ifdef CONFIG_FPU
	err |= rt_save_fpu_state(uc, regs);
#endif
	return err;
}