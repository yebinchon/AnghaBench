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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clocks_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct clk*,unsigned long) ; 

int FUNC5(struct clk *clk, unsigned long rate)
{
	int ret;

	if (FUNC0(clk))
		return -EINVAL;

	/* We do not default just do a clk->rate = rate as
	 * the clock may have been made this way by choice.
	 */

	FUNC1(clk->set_rate == NULL);

	if (clk->set_rate == NULL)
		return -EINVAL;

	FUNC2(&clocks_lock);
	ret = (clk->set_rate)(clk, rate);
	FUNC3(&clocks_lock);

	return ret;
}