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
struct clk {int id; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCM_PCDR1 ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct clk *clk, unsigned long rate)
{
	u32 reg;
	u32 div;
	unsigned long parent_rate;

	parent_rate = FUNC2(clk->parent);

	if (clk->id < 0 || clk->id > 3)
		return -EINVAL;

	div = parent_rate / rate;
	if (div > 64 || div < 1 || ((parent_rate / div) != rate))
		return -EINVAL;
	div--;

	reg = FUNC0(CCM_PCDR1) & ~(0x3f << (clk->id << 3));
	reg |= div << (clk->id << 3);
	FUNC1(reg, CCM_PCDR1);

	return 0;
}