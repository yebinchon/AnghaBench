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
typedef  unsigned long u32 ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIS ; 
 int /*<<< orphan*/  EN ; 
 scalar_t__ FUNC0 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_TCx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEN ; 
 int /*<<< orphan*/  TIMER_CLOCKEVENT ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(unsigned long evt,
		struct clock_event_device *clk)
{
	u32 tc = FUNC4(FUNC2(TIMER_CLOCKEVENT));

	if (FUNC0(tc, SYS_TCx, TEN)) {
		FUNC1(tc, SYS_TCx, TEN, DIS);
		FUNC5(tc, FUNC2(TIMER_CLOCKEVENT));
	}

	FUNC1(tc, SYS_TCx, TEN, EN);

	FUNC5(evt, FUNC3(TIMER_CLOCKEVENT));

	FUNC5(tc, FUNC2(TIMER_CLOCKEVENT));

	return 0;
}