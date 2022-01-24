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
struct set_mtrr_context {int cr4val; int /*<<< orphan*/  ccr3; int /*<<< orphan*/  deftype_hi; int /*<<< orphan*/  deftype_lo; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX86_CCR3 ; 
 int /*<<< orphan*/  CYRIX ; 
 int /*<<< orphan*/  MSR_MTRRdefType ; 
 unsigned int X86_CR0_CD ; 
 int X86_CR4_PGE ; 
 scalar_t__ cpu_has_pge ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 () ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(struct set_mtrr_context *ctxt)
{
	unsigned int cr0;

	/* Disable interrupts locally */
	FUNC2(ctxt->flags);

	if (FUNC6() || FUNC1(CYRIX)) {

		/* Save value of CR4 and clear Page Global Enable (bit 7) */
		if (cpu_has_pge) {
			ctxt->cr4val = FUNC5();
			FUNC9(ctxt->cr4val & ~X86_CR4_PGE);
		}

		/*
		 * Disable and flush caches. Note that wbinvd flushes the TLBs
		 * as a side-effect
		 */
		cr0 = FUNC4() | X86_CR0_CD;
		FUNC7();
		FUNC8(cr0);
		FUNC7();

		if (FUNC6()) {
			/* Save MTRR state */
			FUNC3(MSR_MTRRdefType, ctxt->deftype_lo, ctxt->deftype_hi);
		} else {
			/*
			 * Cyrix ARRs -
			 * everything else were excluded at the top
			 */
			ctxt->ccr3 = FUNC0(CX86_CCR3);
		}
	}
}