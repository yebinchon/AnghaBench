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
typedef  int u32 ;
struct clksel_rate {int div; int flags; } ;
struct clksel {struct clksel_rate* rates; } ;
struct clk {int name; TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int cpu_mask ; 
 struct clksel* FUNC0 (struct clk*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,...) ; 

u32 FUNC3(struct clk *clk, unsigned long target_rate,
				u32 *new_div)
{
	unsigned long test_rate;
	const struct clksel *clks;
	const struct clksel_rate *clkr;
	u32 last_div = 0;

	FUNC1("clock: clksel_round_rate_div: %s target_rate %ld\n",
		 clk->name, target_rate);

	*new_div = 1;

	clks = FUNC0(clk, clk->parent);
	if (!clks)
		return ~0;

	for (clkr = clks->rates; clkr->div; clkr++) {
		if (!(clkr->flags & cpu_mask))
		    continue;

		/* Sanity check */
		if (clkr->div <= last_div)
			FUNC2("clock: clksel_rate table not sorted "
			       "for clock %s", clk->name);

		last_div = clkr->div;

		test_rate = clk->parent->rate / clkr->div;

		if (test_rate <= target_rate)
			break; /* found it */
	}

	if (!clkr->div) {
		FUNC2("clock: Could not find divisor for target "
		       "rate %ld for clock %s parent %s\n", target_rate,
		       clk->name, clk->parent->name);
		return ~0;
	}

	*new_div = clkr->div;

	FUNC1("clock: new_div = %d, new_rate = %ld\n", *new_div,
		 (clk->parent->rate / clkr->div));

	return (clk->parent->rate / clkr->div);
}