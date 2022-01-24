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
struct clk {int /*<<< orphan*/  pmc_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_PMC_PCDR ; 
 int /*<<< orphan*/  AT91_PMC_PCER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct clk *clk, int is_on)
{
	if (is_on)
		FUNC0(AT91_PMC_PCER, clk->pmc_mask);
	else
		FUNC0(AT91_PMC_PCDR, clk->pmc_mask);
}