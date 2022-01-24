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
struct clk {unsigned long (* get_rate ) (struct clk*) ;unsigned long rate; struct clk* parent; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct clk*) ; 

unsigned long FUNC1(struct clk *clk)
{
	if (clk->get_rate)
		return clk->get_rate(clk);

	if (clk->rate)
		return clk->rate;

	if (clk->parent)
		return FUNC1(clk->parent);

	return 0;
}