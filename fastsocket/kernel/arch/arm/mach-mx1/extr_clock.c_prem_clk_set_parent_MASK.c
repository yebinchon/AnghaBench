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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CCM_CSCR ; 
 unsigned int CCM_CSCR_SYSTEM_SEL ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk*) ; 
 int /*<<< orphan*/  prem_clk_clocks ; 

__attribute__((used)) static int FUNC4(struct clk *clk, struct clk *parent)
{
	int i;
	unsigned int reg = FUNC1(CCM_CSCR);

	i = FUNC3(prem_clk_clocks, FUNC0(prem_clk_clocks),
				parent);

	switch (i) {
	case 0:
		reg &= ~CCM_CSCR_SYSTEM_SEL;
		break;
	case 1:
		reg |= CCM_CSCR_SYSTEM_SEL;
		break;
	default:
		return i;
	}

	FUNC2(reg, CCM_CSCR);

	return 0;
}