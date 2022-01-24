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
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct kernel_vm86_regs {TYPE_2__ pt; } ;
struct TYPE_4__ {int /*<<< orphan*/  v86mask; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAFE_MASK ; 
 int /*<<< orphan*/  VEFLAGS ; 
 unsigned long X86_EFLAGS_IF ; 
 int /*<<< orphan*/  FUNC0 (struct kernel_vm86_regs*) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC1 (struct kernel_vm86_regs*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(unsigned long flags, struct kernel_vm86_regs *regs)
{
	FUNC2(VEFLAGS, flags, current->thread.v86mask);
	FUNC2(regs->pt.flags, flags, SAFE_MASK);
	if (flags & X86_EFLAGS_IF)
		FUNC1(regs);
	else
		FUNC0(regs);
}