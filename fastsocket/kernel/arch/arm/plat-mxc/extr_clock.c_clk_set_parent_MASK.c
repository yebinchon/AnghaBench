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
struct clk {int (* set_parent ) (struct clk*,struct clk*) ;struct clk* parent; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  clocks_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct clk*,struct clk*) ; 

int FUNC4(struct clk *clk, struct clk *parent)
{
	int ret = -EINVAL;

	if (clk == NULL || FUNC0(clk) || parent == NULL ||
	    FUNC0(parent) || clk->set_parent == NULL)
		return ret;

	FUNC1(&clocks_mutex);
	ret = clk->set_parent(clk, parent);
	if (ret == 0)
		clk->parent = parent;
	FUNC2(&clocks_mutex);

	return ret;
}