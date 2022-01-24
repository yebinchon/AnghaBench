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
typedef  int /*<<< orphan*/  uint16_t ;
struct rtc_time {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct rtc_wkalrm {scalar_t__ enabled; struct rtc_time time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECMPHREG ; 
 int /*<<< orphan*/  ECMPLREG ; 
 int /*<<< orphan*/  ECMPMREG ; 
 int /*<<< orphan*/  aie_irq ; 
 scalar_t__ alarm_enabled ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *wkalrm)
{
	unsigned long alarm_sec;
	struct rtc_time *time = &wkalrm->time;

	alarm_sec = FUNC2(time->tm_year + 1900, time->tm_mon + 1, time->tm_mday,
	                   time->tm_hour, time->tm_min, time->tm_sec);

	FUNC4(&rtc_lock);

	if (alarm_enabled)
		FUNC0(aie_irq);

	FUNC3(ECMPLREG, (uint16_t)(alarm_sec << 15));
	FUNC3(ECMPMREG, (uint16_t)(alarm_sec >> 1));
	FUNC3(ECMPHREG, (uint16_t)(alarm_sec >> 17));

	if (wkalrm->enabled)
		FUNC1(aie_irq);

	alarm_enabled = wkalrm->enabled;

	FUNC5(&rtc_lock);

	return 0;
}