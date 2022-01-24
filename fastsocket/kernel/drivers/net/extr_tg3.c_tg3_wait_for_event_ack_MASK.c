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
struct tg3 {scalar_t__ last_event_jiffies; } ;

/* Variables and functions */
 int GRC_RX_CPU_DRIVER_EVENT ; 
 int /*<<< orphan*/  GRC_RX_CPU_EVENT ; 
 unsigned int TG3_FW_EVENT_TIMEOUT_USEC ; 
 scalar_t__ jiffies ; 
 unsigned int FUNC0 (long) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(struct tg3 *tp)
{
	int i;
	unsigned int delay_cnt;
	long time_remain;

	/* If enough time has passed, no wait is necessary. */
	time_remain = (long)(tp->last_event_jiffies + 1 +
		      FUNC3(TG3_FW_EVENT_TIMEOUT_USEC)) -
		      (long)jiffies;
	if (time_remain < 0)
		return;

	/* Check if we can shorten the wait time. */
	delay_cnt = FUNC0(time_remain);
	if (delay_cnt > TG3_FW_EVENT_TIMEOUT_USEC)
		delay_cnt = TG3_FW_EVENT_TIMEOUT_USEC;
	delay_cnt = (delay_cnt >> 3) + 1;

	for (i = 0; i < delay_cnt; i++) {
		if (!(FUNC1(GRC_RX_CPU_EVENT) & GRC_RX_CPU_DRIVER_EVENT))
			break;
		FUNC2(8);
	}
}