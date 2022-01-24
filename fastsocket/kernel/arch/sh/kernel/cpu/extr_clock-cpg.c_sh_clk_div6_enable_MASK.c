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
struct clk {int /*<<< orphan*/  enable_reg; int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct clk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct clk *clk)
{
	unsigned long value;
	int ret;

	ret = FUNC2(clk, clk->rate, 0);
	if (ret == 0) {
		value = FUNC0(clk->enable_reg);
		value &= ~0x100; /* clear stop bit to enable clock */
		FUNC1(value, clk->enable_reg);
	}
	return ret;
}