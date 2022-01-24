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
struct clk {long rate; } ;

/* Variables and functions */
 long EINVAL ; 
 scalar_t__ FUNC0 (struct clk*) ; 

long FUNC1(struct clk *clk, unsigned long rate)
{
	if (clk == NULL || FUNC0(clk))
		return -EINVAL;

	return clk->rate;
}