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
struct clk {int /*<<< orphan*/  params; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct icst525_vco) ; 
 struct icst525_vco FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

long FUNC2(struct clk *clk, unsigned long rate)
{
	struct icst525_vco vco;
	vco = FUNC1(clk->params, rate / 1000);
	return FUNC0(clk->params, vco) * 1000;
}