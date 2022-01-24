#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  fpc; } ;
struct TYPE_6__ {int /*<<< orphan*/  mask; } ;
struct TYPE_8__ {int /*<<< orphan*/  per_info; TYPE_2__ fp_regs; int /*<<< orphan*/  orig_gpr2; int /*<<< orphan*/ * acrs; TYPE_1__ psw; } ;
struct user {TYPE_3__ regs; } ;
struct TYPE_9__ {int /*<<< orphan*/  per_info; int /*<<< orphan*/  fp_regs; scalar_t__* acrs; } ;
struct task_struct {TYPE_4__ thread; } ;
typedef  scalar_t__ addr_t ;
struct TYPE_10__ {scalar_t__ orig_gpr2; int /*<<< orphan*/  psw; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 scalar_t__ FPC_VALID_MASK ; 
 scalar_t__ PSW_MASK_PER ; 
 TYPE_5__* FUNC0 (struct task_struct*) ; 

__attribute__((used)) static unsigned long FUNC1(struct task_struct *child, addr_t addr)
{
	struct user *dummy = NULL;
	addr_t offset, tmp;

	if (addr < (addr_t) &dummy->regs.acrs) {
		/*
		 * psw and gprs are stored on the stack
		 */
		tmp = *(addr_t *)((addr_t) &FUNC0(child)->psw + addr);
		if (addr == (addr_t) &dummy->regs.psw.mask)
			/* Remove per bit from user psw. */
			tmp &= ~PSW_MASK_PER;

	} else if (addr < (addr_t) &dummy->regs.orig_gpr2) {
		/*
		 * access registers are stored in the thread structure
		 */
		offset = addr - (addr_t) &dummy->regs.acrs;
#ifdef CONFIG_64BIT
		/*
		 * Very special case: old & broken 64 bit gdb reading
		 * from acrs[15]. Result is a 64 bit value. Read the
		 * 32 bit acrs[15] value and shift it by 32. Sick...
		 */
		if (addr == (addr_t) &dummy->regs.acrs[15])
			tmp = ((unsigned long) child->thread.acrs[15]) << 32;
		else
#endif
		tmp = *(addr_t *)((addr_t) &child->thread.acrs + offset);

	} else if (addr == (addr_t) &dummy->regs.orig_gpr2) {
		/*
		 * orig_gpr2 is stored on the kernel stack
		 */
		tmp = (addr_t) FUNC0(child)->orig_gpr2;

	} else if (addr < (addr_t) &dummy->regs.fp_regs) {
		/*
		 * prevent reads of padding hole between
		 * orig_gpr2 and fp_regs on s390.
		 */
		tmp = 0;

	} else if (addr < (addr_t) (&dummy->regs.fp_regs + 1)) {
		/* 
		 * floating point regs. are stored in the thread structure
		 */
		offset = addr - (addr_t) &dummy->regs.fp_regs;
		tmp = *(addr_t *)((addr_t) &child->thread.fp_regs + offset);
		if (addr == (addr_t) &dummy->regs.fp_regs.fpc)
			tmp &= (unsigned long) FPC_VALID_MASK
				<< (BITS_PER_LONG - 32);

	} else if (addr < (addr_t) (&dummy->regs.per_info + 1)) {
		/*
		 * per_info is found in the thread structure
		 */
		offset = addr - (addr_t) &dummy->regs.per_info;
		tmp = *(addr_t *)((addr_t) &child->thread.per_info + offset);

	} else
		tmp = 0;

	return tmp;
}