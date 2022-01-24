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
typedef  unsigned long u32 ;
struct clk {int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCM_PCDR0 ; 
 unsigned long CCM_PCDR0_48MDIV_MASK ; 
 unsigned long CCM_PCDR0_48MDIV_OFFSET ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * usb_clk ; 

__attribute__((used)) static unsigned long FUNC2(struct clk *clk)
{
	u32 div = 0;
	unsigned long parent_rate;

	parent_rate = FUNC1(clk->parent);

	if (clk->parent == &usb_clk[0]) /* 48M */
		div = FUNC0(CCM_PCDR0) & CCM_PCDR0_48MDIV_MASK
			 >> CCM_PCDR0_48MDIV_OFFSET;
	div++;

	return parent_rate / div;
}