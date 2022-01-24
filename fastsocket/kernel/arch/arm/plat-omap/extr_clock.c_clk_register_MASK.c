#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ prev; scalar_t__ next; } ;
struct clk {int /*<<< orphan*/  (* init ) (struct clk*) ;TYPE_2__ node; TYPE_2__ sibling; TYPE_1__* parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  children; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  clocks ; 
 int /*<<< orphan*/  clocks_mutex ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  root_clks ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 

int FUNC5(struct clk *clk)
{
	if (clk == NULL || FUNC0(clk))
		return -EINVAL;

	/*
	 * trap out already registered clocks
	 */
	if (clk->node.next || clk->node.prev)
		return 0;

	FUNC2(&clocks_mutex);
	if (clk->parent)
		FUNC1(&clk->sibling, &clk->parent->children);
	else
		FUNC1(&clk->sibling, &root_clks);

	FUNC1(&clk->node, &clocks);
	if (clk->init)
		clk->init(clk);
	FUNC3(&clocks_mutex);

	return 0;
}