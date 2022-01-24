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
struct clk {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCM_CSCR ; 
 unsigned int CCM_CSCR_USB_MASK ; 
 unsigned int CCM_CSCR_USB_OFFSET ; 
 int EINVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct clk *clk, unsigned long rate)
{
	unsigned int div;
	unsigned int reg;
	unsigned long parent_rate;

	parent_rate = FUNC2(clk->parent);

	div = parent_rate / rate;

	if (div > 8 || div < 1 || ((parent_rate / div) != rate))
		return -EINVAL;

	div--;

	reg = FUNC0(CCM_CSCR);
	reg &= ~CCM_CSCR_USB_MASK;
	reg |= div << CCM_CSCR_USB_OFFSET;
	FUNC1(reg, CCM_CSCR);

	return 0;
}