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
typedef  int u32 ;
struct clk {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int armclk_mask ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC1(struct clk *clk,
						unsigned long rate)
{
	unsigned long parent = FUNC0(clk->parent);
	u32 div;

	if (parent < rate)
		return parent;

	div = (parent / rate) - 1;
	if (div > armclk_mask)
		div = armclk_mask;

	return parent / (div + 1);
}