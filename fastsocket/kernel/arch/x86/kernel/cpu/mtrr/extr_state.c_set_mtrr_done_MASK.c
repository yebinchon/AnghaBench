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
struct set_mtrr_context {int /*<<< orphan*/  flags; int /*<<< orphan*/  cr4val; int /*<<< orphan*/  ccr3; int /*<<< orphan*/  deftype_hi; int /*<<< orphan*/  deftype_lo; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX86_CCR3 ; 
 int /*<<< orphan*/  CYRIX ; 
 int /*<<< orphan*/  MSR_MTRRdefType ; 
 scalar_t__ cpu_has_pge ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct set_mtrr_context *ctxt)
{
	if (FUNC5() || FUNC0(CYRIX)) {

		/* Flush caches and TLBs */
		FUNC6();

		/* Restore MTRRdefType */
		if (FUNC5()) {
			/* Intel (P6) standard MTRRs */
			FUNC2(MSR_MTRRdefType, ctxt->deftype_lo,
				   ctxt->deftype_hi);
		} else {
			/*
			 * Cyrix ARRs -
			 * everything else was excluded at the top
			 */
			FUNC4(CX86_CCR3, ctxt->ccr3);
		}

		/* Enable caches */
		FUNC7(FUNC3() & 0xbfffffff);

		/* Restore value of CR4 */
		if (cpu_has_pge)
			FUNC8(ctxt->cr4val);
	}
	/* Re-enable interrupts locally (if enabled previously) */
	FUNC1(ctxt->flags);
}