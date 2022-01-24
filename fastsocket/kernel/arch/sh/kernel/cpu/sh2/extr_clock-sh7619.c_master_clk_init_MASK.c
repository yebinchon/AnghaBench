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
struct clk {int rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREQCR ; 
 int PLL2 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int* pll1rate ; 

__attribute__((used)) static void FUNC1(struct clk *clk)
{
	clk->rate *= PLL2 * pll1rate[(FUNC0(FREQCR) >> 8) & 7];
}