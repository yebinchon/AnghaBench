#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
struct TYPE_2__ {int tflags; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 scalar_t__ ISDN_TIMER_02SEC ; 
 scalar_t__ ISDN_TIMER_1SEC ; 
 int ISDN_TIMER_CARRIER ; 
 int ISDN_TIMER_FAST ; 
 int ISDN_TIMER_MODEMPLUS ; 
 int ISDN_TIMER_MODEMREAD ; 
 int ISDN_TIMER_MODEMRING ; 
 int ISDN_TIMER_MODEMXMIT ; 
 int ISDN_TIMER_NETDIAL ; 
 int ISDN_TIMER_NETHANGUP ; 
 scalar_t__ ISDN_TIMER_RES ; 
 scalar_t__ ISDN_TIMER_RINGING ; 
 int ISDN_TIMER_SLOW ; 
 TYPE_1__* dev ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ isdn_timer_cnt1 ; 
 scalar_t__ isdn_timer_cnt2 ; 
 scalar_t__ isdn_timer_cnt3 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC8(ulong dummy)
{
	int tf = dev->tflags;
	if (tf & ISDN_TIMER_FAST) {
		if (tf & ISDN_TIMER_MODEMREAD)
			FUNC6();
		if (tf & ISDN_TIMER_MODEMPLUS)
			FUNC3();
		if (tf & ISDN_TIMER_MODEMXMIT)
			FUNC5();
	}
	if (tf & ISDN_TIMER_SLOW) {
		if (++isdn_timer_cnt1 >= ISDN_TIMER_02SEC) {
			isdn_timer_cnt1 = 0;
			if (tf & ISDN_TIMER_NETDIAL)
				FUNC1();
		}
		if (++isdn_timer_cnt2 >= ISDN_TIMER_1SEC) {
			isdn_timer_cnt2 = 0;
			if (tf & ISDN_TIMER_NETHANGUP)
				FUNC0();
			if (++isdn_timer_cnt3 >= ISDN_TIMER_RINGING) {
				isdn_timer_cnt3 = 0;
				if (tf & ISDN_TIMER_MODEMRING)
					FUNC4();
			}
			if (tf & ISDN_TIMER_CARRIER)
				FUNC2();
		}
	}
	if (tf) 
		FUNC7(&dev->timer, jiffies+ISDN_TIMER_RES);
}