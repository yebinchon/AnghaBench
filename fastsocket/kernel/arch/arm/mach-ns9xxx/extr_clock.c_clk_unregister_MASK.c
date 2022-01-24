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
struct clk {TYPE_1__* parent; int /*<<< orphan*/  node; scalar_t__ refcount; scalar_t__ usage; } ;
struct TYPE_2__ {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  clk_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct clk *clk)
{
	int ret = 0;
	unsigned long flags;

	FUNC1(&clk_lock, flags);

	if (clk->usage || clk->refcount)
		ret = -EBUSY;
	else
		FUNC0(&clk->node);

	if (clk->parent)
		--clk->parent->refcount;

	FUNC2(&clk_lock, flags);

	return ret;
}