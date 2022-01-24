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
struct clk {TYPE_1__* parent; scalar_t__ use_cnt; } ;
struct TYPE_2__ {unsigned long rate_hz; } ;

/* Variables and functions */
 long EBUSY ; 
 long EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  clk_lock ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

long FUNC4(struct clk *clk, unsigned long rate)
{
	unsigned long flags;
	unsigned long actual;
	unsigned long rate_hz;

	if (!clk)
		return -EINVAL;

	if (!FUNC0(clk))
		return -EINVAL;

	if (clk->use_cnt)
		return -EBUSY;

	FUNC2(&clk_lock, flags);
	actual = clk->parent->rate_hz;
	rate_hz = FUNC1(actual, rate);
	FUNC3(&clk_lock, flags);

	return rate_hz;
}