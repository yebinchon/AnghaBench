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
 scalar_t__ CCM_PDR0 ; 
 scalar_t__ CCM_PDR4 ; 
 unsigned long FUNC0 (scalar_t__) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 () ; 

__attribute__((used)) static unsigned long FUNC3(struct clk *clk)
{
	unsigned long pdr0 = FUNC0(CCM_BASE + CCM_PDR0);
	unsigned long pdr4 = FUNC0(CCM_BASE + CCM_PDR4);
	unsigned long div1, div2;

	if (pdr0 & (1 << 26)) {
		div1 = (pdr4 >> 19) & 0x7;
		div2 = (pdr4 >> 16) & 0x7;
		return FUNC2() / ((div1 + 1) * (div2 + 1));
	} else {
		div1 = (pdr0 >> 12) & 0x7;
		return FUNC1(NULL) / div1;
	}
}