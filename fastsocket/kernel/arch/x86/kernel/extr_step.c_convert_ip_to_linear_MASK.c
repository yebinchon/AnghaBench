#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {TYPE_2__* mm; } ;
struct pt_regs {unsigned long ip; int cs; } ;
struct desc_struct {int /*<<< orphan*/  d; } ;
struct TYPE_3__ {unsigned long size; int /*<<< orphan*/  lock; struct desc_struct* ldt; } ;
struct TYPE_4__ {TYPE_1__ context; } ;

/* Variables and functions */
 unsigned long SEGMENT_LDT ; 
 unsigned long SEGMENT_TI_MASK ; 
 unsigned long FUNC0 (struct desc_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct pt_regs*) ; 

unsigned long FUNC5(struct task_struct *child, struct pt_regs *regs)
{
	unsigned long addr, seg;

	addr = regs->ip;
	seg = regs->cs & 0xffff;
	if (FUNC4(regs)) {
		addr = (addr & 0xffff) + (seg << 4);
		return addr;
	}

	/*
	 * We'll assume that the code segments in the GDT
	 * are all zero-based. That is largely true: the
	 * TLS segments are used for data, and the PNPBIOS
	 * and APM bios ones we just ignore here.
	 */
	if ((seg & SEGMENT_TI_MASK) == SEGMENT_LDT) {
		struct desc_struct *desc;
		unsigned long base;

		seg &= ~7UL;

		FUNC1(&child->mm->context.lock);
		if (FUNC3((seg >> 3) >= child->mm->context.size))
			addr = -1L; /* bogus selector, access would fault */
		else {
			desc = child->mm->context.ldt + seg;
			base = FUNC0(desc);

			/* 16-bit code segment? */
			if (!desc->d)
				addr &= 0xffff;
			addr += base;
		}
		FUNC2(&child->mm->context.lock);
	}

	return addr;
}