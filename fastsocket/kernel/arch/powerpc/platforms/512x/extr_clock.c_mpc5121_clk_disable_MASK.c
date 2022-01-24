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
struct clk {int flags; size_t reg; int bit; } ;
struct TYPE_2__ {int /*<<< orphan*/ * sccr; } ;

/* Variables and functions */
 int CLK_HAS_CTRL ; 
 TYPE_1__* clockctl ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct clk *clk)
{
	unsigned int mask;

	if (clk->flags & CLK_HAS_CTRL) {
		mask = FUNC0(&clockctl->sccr[clk->reg]);
		mask &= ~(1 << clk->bit);
		FUNC1(&clockctl->sccr[clk->reg], mask);
	}
}