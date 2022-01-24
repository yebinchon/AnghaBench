#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int decr_int; } ;
struct TYPE_5__ {TYPE_1__ fields; } ;
struct TYPE_6__ {TYPE_2__ int_dword; } ;

/* Variables and functions */
 int HvCall_MaskIPI ; 
 int HvCall_MaskLpEvent ; 
 int HvCall_MaskLpProd ; 
 int HvCall_MaskTimeout ; 
 int /*<<< orphan*/  HvCall_YieldTimed ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* FUNC2 () ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ tb_ticks_per_jiffy ; 

__attribute__((used)) static void FUNC6(void)
{
	unsigned long tb;

	FUNC0(HvCall_MaskIPI |
				    HvCall_MaskLpEvent |
				    HvCall_MaskLpProd |
				    HvCall_MaskTimeout);

	tb = FUNC3();
	/* Compute future tb value when yield should expire */
	FUNC1(HvCall_YieldTimed, tb+tb_ticks_per_jiffy);

	/*
	 * The decrementer stops during the yield.  Force a fake decrementer
	 * here and let the timer_interrupt code sort out the actual time.
	 */
	FUNC2()->int_dword.fields.decr_int = 1;
	FUNC4();
	FUNC5();
}