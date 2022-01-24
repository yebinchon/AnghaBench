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
typedef  int u16 ;
struct clk {unsigned long rate; } ;

/* Variables and functions */
#define  U300_SYSCON_CCR_CLKING_PERFORMANCE_BEST 132 
#define  U300_SYSCON_CCR_CLKING_PERFORMANCE_HIGH 131 
#define  U300_SYSCON_CCR_CLKING_PERFORMANCE_INTERMEDIATE 130 
#define  U300_SYSCON_CCR_CLKING_PERFORMANCE_LOW 129 
#define  U300_SYSCON_CCR_CLKING_PERFORMANCE_LOW_POWER 128 
 int FUNC0 () ; 

__attribute__((used)) static unsigned long FUNC1(struct clk *clk)
{
	u16 val;

	val = FUNC0();

	switch (val) {
	case U300_SYSCON_CCR_CLKING_PERFORMANCE_LOW_POWER:
	case U300_SYSCON_CCR_CLKING_PERFORMANCE_LOW:
		return 6500000;
	case U300_SYSCON_CCR_CLKING_PERFORMANCE_INTERMEDIATE:
		return 26000000;
	case U300_SYSCON_CCR_CLKING_PERFORMANCE_HIGH:
	case U300_SYSCON_CCR_CLKING_PERFORMANCE_BEST:
		return 52000000;
	default:
		break;
	}

	return clk->rate;
}