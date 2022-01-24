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
struct pt_regs {scalar_t__ erp; int /*<<< orphan*/  acr; int /*<<< orphan*/  orig_r10; int /*<<< orphan*/  r13; int /*<<< orphan*/  r12; int /*<<< orphan*/  r11; int /*<<< orphan*/  r10; int /*<<< orphan*/  r9; int /*<<< orphan*/  r8; int /*<<< orphan*/  r7; int /*<<< orphan*/  r6; int /*<<< orphan*/  r5; int /*<<< orphan*/  r4; int /*<<< orphan*/  r3; int /*<<< orphan*/  r2; int /*<<< orphan*/  r1; int /*<<< orphan*/  r0; int /*<<< orphan*/  mof; int /*<<< orphan*/  ccs; int /*<<< orphan*/  srp; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  BANK_DM ; 
 int /*<<< orphan*/  BANK_IM ; 
 scalar_t__ PAGE_OFFSET ; 
 int /*<<< orphan*/  RW_MM_CAUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC2 (unsigned char,unsigned char*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 unsigned long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct pt_regs*) ; 

void
FUNC8(struct pt_regs *regs)
{
	/*
	 * It's possible to use either the USP register or current->thread.usp.
	 * USP might not correspond to the current process for all cases this
	 * function is called, and current->thread.usp isn't up to date for the
	 * current process. Experience shows that using USP is the way to go.
	 */
	unsigned long usp = FUNC4();
	unsigned long d_mmu_cause;
	unsigned long i_mmu_cause;

	FUNC3("CPU: %d\n", FUNC6());

	FUNC3("ERP: %08lx SRP: %08lx  CCS: %08lx USP: %08lx MOF: %08lx\n",
	       regs->erp, regs->srp, regs->ccs, usp, regs->mof);

	FUNC3(" r0: %08lx  r1: %08lx   r2: %08lx  r3: %08lx\n",
	       regs->r0, regs->r1, regs->r2, regs->r3);

	FUNC3(" r4: %08lx  r5: %08lx   r6: %08lx  r7: %08lx\n",
	       regs->r4, regs->r5, regs->r6, regs->r7);

	FUNC3(" r8: %08lx  r9: %08lx  r10: %08lx r11: %08lx\n",
	       regs->r8, regs->r9, regs->r10, regs->r11);

	FUNC3("r12: %08lx r13: %08lx oR10: %08lx acr: %08lx\n",
	       regs->r12, regs->r13, regs->orig_r10, regs->acr);

	FUNC3(" sp: %08lx\n", (unsigned long)regs);

	FUNC0(BANK_IM);
	FUNC1(RW_MM_CAUSE, i_mmu_cause);

	FUNC0(BANK_DM);
	FUNC1(RW_MM_CAUSE, d_mmu_cause);

	FUNC3("       Data MMU Cause: %08lx\n", d_mmu_cause);
	FUNC3("Instruction MMU Cause: %08lx\n", i_mmu_cause);

	FUNC3("Process %s (pid: %d, stackpage=%08lx)\n",
	       current->comm, current->pid, (unsigned long)current);

	/*
	 * When in-kernel, we also print out the stack and code at the
	 * time of the fault..
	 */
	if (!FUNC7(regs)) {
		int i;

		FUNC5(NULL, (unsigned long *)usp);

		/*
		 * If the previous stack-dump wasn't a kernel one, dump the
		 * kernel stack now.
		 */
		if (usp != 0)
			FUNC5(NULL, NULL);

		FUNC3("\nCode: ");

		if (regs->erp < PAGE_OFFSET)
			goto bad_value;

		/*
		 * Quite often the value at regs->erp doesn't point to the
		 * interesting instruction, which often is the previous
		 * instruction. So dump at an offset large enough that the
		 * instruction decoding should be in sync at the interesting
		 * point, but small enough to fit on a row. The regs->erp
		 * location is pointed out in a ksymoops-friendly way by
		 * wrapping the byte for that address in parenthesises.
		 */
		for (i = -12; i < 12; i++) {
			unsigned char c;

			if (FUNC2(c, &((unsigned char *)regs->erp)[i])) {
bad_value:
				FUNC3(" Bad IP value.");
				break;
			}

			if (i == 0)
				FUNC3("(%02x) ", c);
			else
				FUNC3("%02x ", c);
		}
		FUNC3("\n");
	}
}