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
struct clk {int (* set_rate ) (struct clk*,unsigned long) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  clocks_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct clk*,unsigned long) ; 

int FUNC4(struct clk *clk, unsigned long rate)
{
	int ret = -EINVAL;

	if (clk == NULL || FUNC0(clk) || clk->set_rate == NULL || rate == 0)
		return ret;

	FUNC1(&clocks_mutex);
	ret = clk->set_rate(clk, rate);
	FUNC2(&clocks_mutex);

	return ret;
}