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
struct icst525_vco {int dummy; } ;
struct clk {int rate; int /*<<< orphan*/  (* setvco ) (struct clk*,struct icst525_vco) ;int /*<<< orphan*/  params; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,struct icst525_vco) ; 
 struct icst525_vco FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*,struct icst525_vco) ; 

int FUNC3(struct clk *clk, unsigned long rate)
{
	int ret = -EIO;

	if (clk->setvco) {
		struct icst525_vco vco;

		vco = FUNC1(clk->params, rate / 1000);
		clk->rate = FUNC0(clk->params, vco) * 1000;
		clk->setvco(clk, vco);
		ret = 0;
	}
	return ret;
}