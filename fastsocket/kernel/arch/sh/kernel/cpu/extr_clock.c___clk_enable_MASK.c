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
struct clk {int /*<<< orphan*/  usecount; struct clk* parent; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* enable ) (struct clk*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct clk *clk)
{
	int ret = 0;

	if (clk->usecount++ == 0) {
		if (clk->parent) {
			ret = FUNC3(clk->parent);
			if (FUNC2(ret))
				goto err;
		}

		if (clk->ops && clk->ops->enable) {
			ret = clk->ops->enable(clk);
			if (ret) {
				if (clk->parent)
					FUNC0(clk->parent);
				goto err;
			}
		}
	}

	return ret;
err:
	clk->usecount--;
	return ret;
}