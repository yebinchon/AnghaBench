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
struct TYPE_2__ {int tm_mday; int tm_mon; int tm_sec; int tm_min; int tm_hour; int tm_year; } ;
struct rtc_wkalrm {int enabled; scalar_t__ pending; TYPE_1__ time; } ;
struct device {int dummy; } ;
struct cmos_rtc {scalar_t__ mon_alrm; scalar_t__ day_alrm; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int EIO ; 
 unsigned char RTC_AIE ; 
 scalar_t__ RTC_CONTROL ; 
 scalar_t__ RTC_HOURS_ALARM ; 
 scalar_t__ RTC_MINUTES_ALARM ; 
 scalar_t__ RTC_SECONDS_ALARM ; 
 int FUNC1 (int) ; 
 struct cmos_rtc* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *t)
{
	struct cmos_rtc	*cmos = FUNC2(dev);
	unsigned char	rtc_control;

	if (!FUNC3(cmos->irq))
		return -EIO;

	/* Basic alarms only support hour, minute, and seconds fields.
	 * Some also support day and month, for alarms up to a year in
	 * the future.
	 */
	t->time.tm_mday = -1;
	t->time.tm_mon = -1;

	FUNC4(&rtc_lock);
	t->time.tm_sec = FUNC0(RTC_SECONDS_ALARM);
	t->time.tm_min = FUNC0(RTC_MINUTES_ALARM);
	t->time.tm_hour = FUNC0(RTC_HOURS_ALARM);

	if (cmos->day_alrm) {
		/* ignore upper bits on readback per ACPI spec */
		t->time.tm_mday = FUNC0(cmos->day_alrm) & 0x3f;
		if (!t->time.tm_mday)
			t->time.tm_mday = -1;

		if (cmos->mon_alrm) {
			t->time.tm_mon = FUNC0(cmos->mon_alrm);
			if (!t->time.tm_mon)
				t->time.tm_mon = -1;
		}
	}

	rtc_control = FUNC0(RTC_CONTROL);
	FUNC5(&rtc_lock);

	/* REVISIT this assumes PC style usage:  always BCD */

	if (((unsigned)t->time.tm_sec) < 0x60)
		t->time.tm_sec = FUNC1(t->time.tm_sec);
	else
		t->time.tm_sec = -1;
	if (((unsigned)t->time.tm_min) < 0x60)
		t->time.tm_min = FUNC1(t->time.tm_min);
	else
		t->time.tm_min = -1;
	if (((unsigned)t->time.tm_hour) < 0x24)
		t->time.tm_hour = FUNC1(t->time.tm_hour);
	else
		t->time.tm_hour = -1;

	if (cmos->day_alrm) {
		if (((unsigned)t->time.tm_mday) <= 0x31)
			t->time.tm_mday = FUNC1(t->time.tm_mday);
		else
			t->time.tm_mday = -1;
		if (cmos->mon_alrm) {
			if (((unsigned)t->time.tm_mon) <= 0x12)
				t->time.tm_mon = FUNC1(t->time.tm_mon) - 1;
			else
				t->time.tm_mon = -1;
		}
	}
	t->time.tm_year = -1;

	t->enabled = !!(rtc_control & RTC_AIE);
	t->pending = 0;

	return 0;
}