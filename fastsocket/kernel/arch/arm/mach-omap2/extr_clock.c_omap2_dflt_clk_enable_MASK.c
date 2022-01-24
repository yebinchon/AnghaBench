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
struct clk {int flags; int enable_bit; TYPE_1__* ops; int /*<<< orphan*/ * enable_reg; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {scalar_t__ find_idlest; } ;

/* Variables and functions */
 int INVERT_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct clk *clk)
{
	u32 v;

	if (FUNC4(clk->enable_reg == NULL)) {
		FUNC3("clock.c: Enable for %s without enable code\n",
		       clk->name);
		return 0; /* REVISIT: -EINVAL */
	}

	v = FUNC0(clk->enable_reg);
	if (clk->flags & INVERT_ENABLE)
		v &= ~(1 << clk->enable_bit);
	else
		v |= (1 << clk->enable_bit);
	FUNC1(v, clk->enable_reg);
	v = FUNC0(clk->enable_reg); /* OCP barrier */

	if (clk->ops->find_idlest)
		FUNC2(clk);

	return 0;
}