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
struct clk {unsigned long (* get_rate ) (struct clk*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  clk_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC2 (struct clk*) ; 

unsigned long FUNC3(struct clk *clk)
{
	unsigned long flags;
	unsigned long rate;

	FUNC0(&clk_lock, flags);
	rate = clk->get_rate(clk);
	FUNC1(&clk_lock, flags);

	return rate;
}