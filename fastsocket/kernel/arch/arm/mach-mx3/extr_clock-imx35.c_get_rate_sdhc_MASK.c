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
struct clk {int id; } ;

/* Variables and functions */
 scalar_t__ CCM_BASE ; 
 scalar_t__ CCM_PDR3 ; 
 unsigned long FUNC0 (scalar_t__) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 () ; 
 unsigned long FUNC3 () ; 

__attribute__((used)) static unsigned long FUNC4(struct clk *clk)
{
	unsigned long pdr3 = FUNC0(CCM_BASE + CCM_PDR3);
	unsigned long div, rate;

	if (pdr3 & (1 << 6))
		rate = FUNC2();
	else
		rate = FUNC3();

	switch (clk->id) {
	default:
	case 0:
		div = pdr3 & 0x3f;
		break;
	case 1:
		div = (pdr3 >> 8) & 0x3f;
		break;
	case 2:
		div = (pdr3 >> 16) & 0x3f;
		break;
	}

	return rate / FUNC1(div);
}