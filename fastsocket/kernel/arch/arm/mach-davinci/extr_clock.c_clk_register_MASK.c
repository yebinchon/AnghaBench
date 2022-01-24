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
struct clk {TYPE_1__* parent; scalar_t__ rate; int /*<<< orphan*/  node; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {scalar_t__ rate; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clocks ; 
 int /*<<< orphan*/  clocks_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct clk *clk)
{
	if (clk == NULL || FUNC0(clk))
		return -EINVAL;

	if (FUNC1(clk->parent && !clk->parent->rate,
			"CLK: %s parent %s has no rate!\n",
			clk->name, clk->parent->name))
		return -EINVAL;

	FUNC3(&clocks_mutex);
	FUNC2(&clk->node, &clocks);
	FUNC4(&clocks_mutex);

	/* If rate is already set, use it */
	if (clk->rate)
		return 0;

	/* Otherwise, default to parent rate */
	if (clk->parent)
		clk->rate = clk->parent->rate;

	return 0;
}