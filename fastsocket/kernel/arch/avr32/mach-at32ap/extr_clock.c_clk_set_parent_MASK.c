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
struct clk {int (* set_parent ) (struct clk*,struct clk*) ;} ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  clk_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct clk*,struct clk*) ; 

int FUNC3(struct clk *clk, struct clk *parent)
{
	unsigned long flags;
	int ret;

	if (!clk->set_parent)
		return -ENOSYS;

	FUNC0(&clk_lock, flags);
	ret = clk->set_parent(clk, parent);
	FUNC1(&clk_lock, flags);

	return ret;
}