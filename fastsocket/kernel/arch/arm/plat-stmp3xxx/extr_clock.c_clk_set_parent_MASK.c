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
struct clk {struct clk* parent; scalar_t__ usage; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_parent ) (struct clk*,struct clk*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  clocks_lock ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct clk*,struct clk*) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct clk *clk, struct clk *parent)
{
	int ret = -ENODEV;
	unsigned long clocks_flags;

	if (FUNC5(!FUNC0(clk)))
		goto out;

	if (!clk->ops->set_parent)
		goto out;

	FUNC2(&clocks_lock, clocks_flags);

	ret = clk->ops->set_parent(clk, parent);
	if (!ret) {
		/* disable if usage count is 0 */
		FUNC1(parent);

		parent->usage += clk->usage;
		clk->parent->usage -= clk->usage;

		/* disable if new usage count is 0 */
		FUNC1(clk->parent);

		clk->parent = parent;
	}
	FUNC3(&clocks_lock, clocks_flags);

out:
	return ret;
}