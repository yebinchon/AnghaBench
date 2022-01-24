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
struct clk {int enable_bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_CLKEN ; 
 int EN_APLL_LOCKED ; 
 int /*<<< orphan*/  PLL_MOD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct clk *clk)
{
	u32 cval;

	cval = FUNC0(PLL_MOD, CM_CLKEN);
	cval &= ~(EN_APLL_LOCKED << clk->enable_bit);
	FUNC1(cval, PLL_MOD, CM_CLKEN);
}