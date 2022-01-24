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
typedef  unsigned long u32 ;
struct clk {unsigned long rate; TYPE_1__* parent; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {unsigned long rate; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,...) ; 

unsigned long FUNC2(struct clk *clk)
{
	unsigned long rate;
	u32 div = 0;

	FUNC1("clock: recalc'ing clksel clk %s\n", clk->name);

	div = FUNC0(clk);
	if (div == 0)
		return clk->rate;

	rate = clk->parent->rate / div;

	FUNC1("clock: new clock rate is %ld (div %d)\n", rate, div);

	return rate;
}