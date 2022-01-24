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
 int CCM_CSCR_BCLK_MASK ; 
 int CCM_CSCR_BCLK_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk *clk)
{
	return FUNC1(clk->parent) / (((FUNC0(CCM_CSCR) &
			CCM_CSCR_BCLK_MASK) >> CCM_CSCR_BCLK_OFFSET) + 1);
}