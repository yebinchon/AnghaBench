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
struct clk {scalar_t__ usecount; int flags; struct clk* parent; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (struct clk*) ;} ;

/* Variables and functions */
 int CLOCK_NO_IDLE_PARENT ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 

__attribute__((used)) static void FUNC3(struct clk *clk)
{
	if (clk->usecount > 0 && !(--clk->usecount)) {
		clk->ops->disable(clk);
		if (FUNC0(clk->parent)) {
			FUNC3(clk->parent);
			if (clk->flags & CLOCK_NO_IDLE_PARENT)
				FUNC1(clk->parent);
		}
	}
}