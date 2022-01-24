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
struct pt_regs {scalar_t__ irp; int /*<<< orphan*/  orig_r10; int /*<<< orphan*/  r13; int /*<<< orphan*/  r12; int /*<<< orphan*/  r11; int /*<<< orphan*/  r10; int /*<<< orphan*/  r9; int /*<<< orphan*/  r8; int /*<<< orphan*/  r7; int /*<<< orphan*/  r6; int /*<<< orphan*/  r5; int /*<<< orphan*/  r4; int /*<<< orphan*/  r3; int /*<<< orphan*/  r2; int /*<<< orphan*/  r1; int /*<<< orphan*/  r0; int /*<<< orphan*/  mof; int /*<<< orphan*/  dccr; int /*<<< orphan*/  srp; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 scalar_t__ PAGE_OFFSET ; 
 scalar_t__* R_MMU_CAUSE ; 
 scalar_t__ FUNC0 (unsigned char,unsigned char*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 

void
FUNC5(struct pt_regs *regs)
{
	/*
	 * It's possible to use either the USP register or current->thread.usp.
	 * USP might not correspond to the current process for all cases this
	 * function is called, and current->thread.usp isn't up to date for the
	 * current process. Experience shows that using USP is the way to go.
	 */
	unsigned long usp = FUNC2();

	FUNC1("IRP: %08lx SRP: %08lx DCCR: %08lx USP: %08lx MOF: %08lx\n",
	       regs->irp, regs->srp, regs->dccr, usp, regs->mof);

	FUNC1(" r0: %08lx  r1: %08lx   r2: %08lx  r3: %08lx\n",
	       regs->r0, regs->r1, regs->r2, regs->r3);

	FUNC1(" r4: %08lx  r5: %08lx   r6: %08lx  r7: %08lx\n",
	       regs->r4, regs->r5, regs->r6, regs->r7);

	FUNC1(" r8: %08lx  r9: %08lx  r10: %08lx r11: %08lx\n",
	       regs->r8, regs->r9, regs->r10, regs->r11);

	FUNC1("r12: %08lx r13: %08lx oR10: %08lx  sp: %08lx\n",
	       regs->r12, regs->r13, regs->orig_r10, (long unsigned)regs);

	FUNC1("R_MMU_CAUSE: %08lx\n", (unsigned long)*R_MMU_CAUSE);

	FUNC1("Process %s (pid: %d, stackpage=%08lx)\n",
	       current->comm, current->pid, (unsigned long)current);

	/*
	 * When in-kernel, we also print out the stack and code at the
	 * time of the fault..
	 */
	if (!FUNC4(regs)) {
		int i;

		FUNC3(NULL, (unsigned long *)usp);

		/*
		 * If the previous stack-dump wasn't a kernel one, dump the
		 * kernel stack now.
		 */
		if (usp != 0)
			FUNC3(NULL, NULL);

		FUNC1("\nCode: ");

		if (regs->irp < PAGE_OFFSET)
			goto bad_value;

		/*
		 * Quite often the value at regs->irp doesn't point to the
		 * interesting instruction, which often is the previous
		 * instruction. So dump at an offset large enough that the
		 * instruction decoding should be in sync at the interesting
		 * point, but small enough to fit on a row. The regs->irp
		 * location is pointed out in a ksymoops-friendly way by
		 * wrapping the byte for that address in parenthesises.
		 */
		for (i = -12; i < 12; i++) {
			unsigned char c;

			if (FUNC0(c, &((unsigned char *)regs->irp)[i])) {
bad_value:
				FUNC1(" Bad IP value.");
				break;
			}

			if (i == 0)
				FUNC1("(%02x) ", c);
			else
				FUNC1("%02x ", c);
		}
		FUNC1("\n");
	}
}