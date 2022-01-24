#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {unsigned long spu; scalar_t__ bpc; } ;
struct TYPE_4__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 scalar_t__ PAGE_OFFSET ; 
 scalar_t__ FUNC0 (unsigned char,unsigned char*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct pt_regs*) ; 

__attribute__((used)) static void FUNC7(struct pt_regs *regs)
{
	int i = 0;
	int in_kernel = 1;
	unsigned long sp;

	FUNC1("CPU:    %d\n", FUNC4());
	FUNC2(regs);

	sp = (unsigned long) (1+regs);
	if (FUNC6(regs)) {
		in_kernel = 0;
		sp = regs->spu;
		FUNC1("SPU: %08lx\n", sp);
	} else {
		FUNC1("SPI: %08lx\n", sp);
	}
	FUNC1("Process %s (pid: %d, process nr: %d, stackpage=%08lx)",
		current->comm, FUNC5(current), 0xffff & i, 4096+(unsigned long)current);

	/*
	 * When in-kernel, we also print out the stack and code at the
	 * time of the fault..
	 */
	if (in_kernel) {
		FUNC1("\nStack: ");
		FUNC3(current, (unsigned long*) sp);

		FUNC1("\nCode: ");
		if (regs->bpc < PAGE_OFFSET)
			goto bad;

		for(i=0;i<20;i++) {
			unsigned char c;
			if (FUNC0(c, &((unsigned char*)regs->bpc)[i])) {
bad:
				FUNC1(" Bad PC value.");
				break;
			}
			FUNC1("%02x ", c);
		}
	}
	FUNC1("\n");
}