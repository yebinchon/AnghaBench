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
struct set_mtrr_context {int deftype_lo; int ccr3; int /*<<< orphan*/  deftype_hi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX86_CCR3 ; 
 int /*<<< orphan*/  CYRIX ; 
 int /*<<< orphan*/  MSR_MTRRdefType ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 () ; 

void FUNC4(struct set_mtrr_context *ctxt)
{
	if (FUNC3()) {
		/* Disable MTRRs, and set the default type to uncached */
		FUNC1(MSR_MTRRdefType, ctxt->deftype_lo & 0xf300UL,
		      ctxt->deftype_hi);
	} else {
		if (FUNC0(CYRIX)) {
			/* Cyrix ARRs - everything else were excluded at the top */
			FUNC2(CX86_CCR3, (ctxt->ccr3 & 0x0f) | 0x10);
		}
	}
}