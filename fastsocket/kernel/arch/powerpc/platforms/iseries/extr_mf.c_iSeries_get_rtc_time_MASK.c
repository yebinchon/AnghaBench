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
struct rtc_time {int /*<<< orphan*/  tm_mon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtc_time*) ; 

void FUNC1(struct rtc_time *rtc_tm)
{
	FUNC0(rtc_tm);
	rtc_tm->tm_mon--;
}