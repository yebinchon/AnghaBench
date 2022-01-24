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
 unsigned long FUNC1 (struct clk*,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk *clk,
	unsigned long rate)
{
	unsigned long div = FUNC1(clk, rate);

	if (div == 0)
		return 0;

	return FUNC0(clk->parent) / div;
}