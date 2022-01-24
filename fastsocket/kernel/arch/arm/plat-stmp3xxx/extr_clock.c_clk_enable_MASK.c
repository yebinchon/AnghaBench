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
struct clk {TYPE_1__* ops; int /*<<< orphan*/  usage; struct clk* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable ) (struct clk*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  clocks_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct clk *clk)
{
	unsigned long clocks_flags;

	if (FUNC4(!FUNC0(clk)))
		return -EINVAL;

	if (clk->parent)
		FUNC5(clk->parent);

	FUNC1(&clocks_lock, clocks_flags);

	clk->usage++;
	if (clk->ops && clk->ops->enable)
		clk->ops->enable(clk);

	FUNC2(&clocks_lock, clocks_flags);
	return 0;
}