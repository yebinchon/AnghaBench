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

/* Variables and functions */
 scalar_t__ MX1_2_TSTAT ; 
 int MX2_TSTAT_CAPT ; 
 int MX2_TSTAT_COMP ; 
 scalar_t__ MX3_TSTAT ; 
 int MX3_TSTAT_OF1 ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ timer_base ; 

__attribute__((used)) static void FUNC5(void)
{
	if (FUNC1())
		FUNC0(0, timer_base + MX1_2_TSTAT);
	if (FUNC2())
		FUNC0(MX2_TSTAT_CAPT | MX2_TSTAT_COMP, timer_base + MX1_2_TSTAT);
	if (FUNC4() || FUNC3())
		FUNC0(MX3_TSTAT_OF1, timer_base + MX3_TSTAT);
}