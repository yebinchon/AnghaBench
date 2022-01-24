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
struct clk {unsigned int pmc_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_CKGR_UCKR ; 
 unsigned int AT91_PMC_BIASEN ; 
 int AT91_PMC_LOCKU ; 
 int /*<<< orphan*/  AT91_PMC_SR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct clk *clk, int is_on)
{
	unsigned int uckr = FUNC0(AT91_CKGR_UCKR);

	if (FUNC2()) {
		if (is_on)
			uckr |= AT91_PMC_BIASEN;
		else
			uckr &= ~AT91_PMC_BIASEN;
	}

	if (is_on) {
		is_on = AT91_PMC_LOCKU;
		FUNC1(AT91_CKGR_UCKR, uckr | clk->pmc_mask);
	} else
		FUNC1(AT91_CKGR_UCKR, uckr & ~(clk->pmc_mask));

	do {
		FUNC3();
	} while ((FUNC0(AT91_PMC_SR) & AT91_PMC_LOCKU) != is_on);
}