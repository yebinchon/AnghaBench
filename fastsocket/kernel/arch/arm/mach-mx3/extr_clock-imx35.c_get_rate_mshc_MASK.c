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
 scalar_t__ CCM_BASE ; 
 scalar_t__ CCM_PDR1 ; 
 unsigned long FUNC0 (scalar_t__) ; 
 unsigned long FUNC1 () ; 
 unsigned long FUNC2 () ; 

__attribute__((used)) static unsigned long FUNC3(struct clk *clk)
{
	unsigned long pdr1 = FUNC0(CCM_BASE + CCM_PDR1);
	unsigned long div1, div2, rate;

	if (pdr1 & (1 << 7))
		rate = FUNC1();
	else
		rate = FUNC2();

	div1 = (pdr1 >> 29) & 0x7;
	div2 = (pdr1 >> 22) & 0x3f;

	return rate / ((div1 + 1) * (div2 + 1));
}