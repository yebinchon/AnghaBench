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
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct clk*,struct clk*) ; 

int FUNC3(struct clk *clk, struct clk *parent)
{
	int ret = -ENODEV;
	if (!clk->set_parent)
		goto out;

	FUNC0();
	ret = clk->set_parent(clk, parent);
	if (!ret)
		clk->parent = parent;
	FUNC1();

out:
	return ret;
}