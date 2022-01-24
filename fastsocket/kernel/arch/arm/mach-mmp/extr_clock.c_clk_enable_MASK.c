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
struct clk {TYPE_1__* ops; int /*<<< orphan*/  enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable ) (struct clk*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  clocks_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 

int FUNC3(struct clk *clk)
{
	unsigned long flags;

	FUNC0(&clocks_lock, flags);
	if (clk->enabled++ == 0)
		clk->ops->enable(clk);
	FUNC1(&clocks_lock, flags);
	return 0;
}