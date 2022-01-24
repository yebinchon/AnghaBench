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
struct clk {scalar_t__ rate; unsigned long (* get_rate ) (struct clk*) ;struct clk* parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 unsigned long FUNC1 (struct clk*) ; 

unsigned long FUNC2(struct clk *clk)
{
	if (FUNC0(clk))
		return 0;

	if (clk->rate != 0)
		return clk->rate;

	if (clk->get_rate != NULL)
		return (clk->get_rate)(clk);

	if (clk->parent != NULL)
		return FUNC2(clk->parent);

	return clk->rate;
}