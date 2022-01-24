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
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int SYS_CNTRL_M21 ; 
 int /*<<< orphan*/  SYS_COUNTER_CNTRL ; 
 int /*<<< orphan*/  SYS_RTCMATCH2 ; 
 int /*<<< orphan*/  SYS_RTCREAD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(unsigned long delta,
					 struct clock_event_device *cd)
{
	delta += FUNC0(SYS_RTCREAD);
	/* wait for register access */
	while (FUNC0(SYS_COUNTER_CNTRL) & SYS_CNTRL_M21)
		;
	FUNC2(delta, SYS_RTCMATCH2);
	FUNC1();

	return 0;
}