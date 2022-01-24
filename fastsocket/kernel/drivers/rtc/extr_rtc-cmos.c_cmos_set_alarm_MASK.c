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
struct TYPE_2__ {int tm_mon; unsigned char tm_mday; unsigned char tm_hour; unsigned char tm_min; unsigned char tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct device {int dummy; } ;
struct cmos_rtc {scalar_t__ mon_alrm; scalar_t__ day_alrm; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char,scalar_t__) ; 
 int EIO ; 
 int /*<<< orphan*/  RTC_AIE ; 
 scalar_t__ RTC_HOURS_ALARM ; 
 scalar_t__ RTC_MINUTES_ALARM ; 
 scalar_t__ RTC_SECONDS_ALARM ; 
 int FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct cmos_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cmos_rtc*,int /*<<< orphan*/ ) ; 
 struct cmos_rtc* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct rtc_wkalrm *t)
{
	struct cmos_rtc	*cmos = FUNC4(dev);
	unsigned char	mon, mday, hrs, min, sec;

	if (!FUNC6(cmos->irq))
		return -EIO;

	/* REVISIT this assumes PC style usage:  always BCD */

	/* Writing 0xff means "don't care" or "match all".  */

	mon = t->time.tm_mon + 1;
	mon = (mon <= 12) ? FUNC1(mon) : 0xff;

	mday = t->time.tm_mday;
	mday = (mday >= 1 && mday <= 31) ? FUNC1(mday) : 0xff;

	hrs = t->time.tm_hour;
	hrs = (hrs < 24) ? FUNC1(hrs) : 0xff;

	min = t->time.tm_min;
	min = (min < 60) ? FUNC1(min) : 0xff;

	sec = t->time.tm_sec;
	sec = (sec < 60) ? FUNC1(sec) : 0xff;

	FUNC7(&rtc_lock);

	/* next rtc irq must not be from previous alarm setting */
	FUNC2(cmos, RTC_AIE);

	/* update alarm */
	FUNC0(hrs, RTC_HOURS_ALARM);
	FUNC0(min, RTC_MINUTES_ALARM);
	FUNC0(sec, RTC_SECONDS_ALARM);

	/* the system may support an "enhanced" alarm */
	if (cmos->day_alrm) {
		FUNC0(mday, cmos->day_alrm);
		if (cmos->mon_alrm)
			FUNC0(mon, cmos->mon_alrm);
	}

	/* FIXME the HPET alarm glue currently ignores day_alrm
	 * and mon_alrm ...
	 */
	FUNC5(t->time.tm_hour, t->time.tm_min, t->time.tm_sec);

	if (t->enabled)
		FUNC3(cmos, RTC_AIE);

	FUNC8(&rtc_lock);

	return 0;
}