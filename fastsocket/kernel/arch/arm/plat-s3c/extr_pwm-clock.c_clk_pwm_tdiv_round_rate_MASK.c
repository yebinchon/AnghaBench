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
struct clk {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static unsigned long FUNC2(struct clk *clk,
					     unsigned long rate)
{
	unsigned long parent_rate;
	unsigned long divisor;

	parent_rate = FUNC0(clk->parent);
	divisor = parent_rate / rate;

	if (divisor <= 1 && FUNC1())
		divisor = 1;
	else if (divisor <= 2)
		divisor = 2;
	else if (divisor <= 4)
		divisor = 4;
	else if (divisor <= 8)
		divisor = 8;
	else
		divisor = 16;

	return parent_rate / divisor;
}