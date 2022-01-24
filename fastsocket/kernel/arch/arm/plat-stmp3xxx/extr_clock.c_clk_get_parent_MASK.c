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
struct clk {struct clk* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 scalar_t__ FUNC1 (int) ; 

struct clk *FUNC2(struct clk *clk)
{
	if (FUNC1(!FUNC0(clk)))
		return NULL;
	return clk->parent;
}