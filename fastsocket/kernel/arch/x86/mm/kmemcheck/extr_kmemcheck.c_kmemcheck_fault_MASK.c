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
struct pt_regs {int flags; scalar_t__ cs; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  KMEMCHECK_READ ; 
 int /*<<< orphan*/  KMEMCHECK_WRITE ; 
 int X86_VM_MASK ; 
 scalar_t__ __KERNEL_CS ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 

bool FUNC3(struct pt_regs *regs, unsigned long address,
	unsigned long error_code)
{
	pte_t *pte;

	/*
	 * XXX: Is it safe to assume that memory accesses from virtual 86
	 * mode or non-kernel code segments will _never_ access kernel
	 * memory (e.g. tracked pages)? For now, we need this to avoid
	 * invoking kmemcheck for PnP BIOS calls.
	 */
	if (regs->flags & X86_VM_MASK)
		return false;
	if (regs->cs != __KERNEL_CS)
		return false;

	pte = FUNC1(address);
	if (!pte)
		return false;

	if (error_code & 2)
		FUNC0(regs, address, KMEMCHECK_WRITE);
	else
		FUNC0(regs, address, KMEMCHECK_READ);

	FUNC2(regs);
	return true;
}