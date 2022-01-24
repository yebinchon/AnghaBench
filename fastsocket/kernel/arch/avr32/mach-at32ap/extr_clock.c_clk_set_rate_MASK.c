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
struct clk {long (* set_rate ) (struct clk*,unsigned long,int) ;} ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  clk_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 long FUNC2 (struct clk*,unsigned long,int) ; 

int FUNC3(struct clk *clk, unsigned long rate)
{
	unsigned long flags;
	long ret;

	if (!clk->set_rate)
		return -ENOSYS;

	FUNC0(&clk_lock, flags);
	ret = clk->set_rate(clk, rate, 1);
	FUNC1(&clk_lock, flags);

	return (ret < 0) ? ret : 0;
}