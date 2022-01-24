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
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct clk ck_13MHz ; 
 struct clk ck_pll1 ; 
 int FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 

__attribute__((used)) static int FUNC2(struct clk *clk, struct clk *parent)
{
	int ret = -EINVAL;

	if (parent == &ck_13MHz)
		ret = FUNC0(clk);
	else if (parent == &ck_pll1)
		ret = FUNC1(clk);

	return ret;
}