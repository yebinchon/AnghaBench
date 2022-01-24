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
 scalar_t__ CCM_PDR4 ; 
 unsigned long FUNC0 (scalar_t__) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 () ; 
 unsigned long FUNC3 () ; 

__attribute__((used)) static unsigned long FUNC4(struct clk *clk)
{
	unsigned long pdr4 = FUNC0(CCM_BASE + CCM_PDR4);
	unsigned long rate;

	if (pdr4 & (1 << 9))
		rate = FUNC2();
	else
		rate = FUNC3();

	return rate / FUNC1((pdr4 >> 22) & 0x3f);
}