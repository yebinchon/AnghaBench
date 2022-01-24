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

/* Variables and functions */
 scalar_t__ U300_SYSCON_CCR ; 
 int U300_SYSCON_CCR_CLKING_PERFORMANCE_BEST ; 
 int U300_SYSCON_CCR_CLKING_PERFORMANCE_HIGH ; 
 int U300_SYSCON_CCR_CLKING_PERFORMANCE_INTERMEDIATE ; 
 int U300_SYSCON_CCR_CLKING_PERFORMANCE_LOW_POWER ; 
 int U300_SYSCON_CCR_CLKING_PERFORMANCE_MASK ; 
 scalar_t__ U300_SYSCON_VBASE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  syscon_clkreg_lock ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

void FUNC4(unsigned long rate)
{
	u16 val;
	unsigned long iflags;

	switch (rate) {
	case 13000000:
		val = U300_SYSCON_CCR_CLKING_PERFORMANCE_LOW_POWER;
		break;
	case 52000000:
		val = U300_SYSCON_CCR_CLKING_PERFORMANCE_INTERMEDIATE;
		break;
	case 104000000:
		val = U300_SYSCON_CCR_CLKING_PERFORMANCE_HIGH;
		break;
	case 208000000:
		val = U300_SYSCON_CCR_CLKING_PERFORMANCE_BEST;
		break;
	default:
		return;
	}
	FUNC1(&syscon_clkreg_lock, iflags);
	val |= FUNC0(U300_SYSCON_VBASE + U300_SYSCON_CCR) &
		~U300_SYSCON_CCR_CLKING_PERFORMANCE_MASK ;
	FUNC3(val, U300_SYSCON_VBASE + U300_SYSCON_CCR);
	FUNC2(&syscon_clkreg_lock, iflags);
}