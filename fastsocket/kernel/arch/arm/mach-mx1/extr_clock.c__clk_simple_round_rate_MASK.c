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

__attribute__((used)) static unsigned long
FUNC1(struct clk *clk, unsigned long rate, unsigned int limit)
{
	int div;
	unsigned long parent_rate;

	parent_rate = FUNC0(clk->parent);

	div = parent_rate / rate;
	if (parent_rate % rate)
		div++;

	if (div > limit)
		div = limit;

	return parent_rate / div;
}