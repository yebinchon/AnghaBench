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
typedef  scalar_t__ u32 ;
struct sam9_rtc {int dummy; } ;
struct rtc_time {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_mon; scalar_t__ tm_year; } ;
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  alrm ;

/* Variables and functions */
 scalar_t__ ALARM_DISABLED ; 
 int /*<<< orphan*/  AR ; 
 int AT91_RTT_ALMIEN ; 
 int EILSEQ ; 
 int /*<<< orphan*/  MR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sam9_rtc* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct sam9_rtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_wkalrm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct rtc_time*) ; 
 int FUNC5 (struct sam9_rtc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct sam9_rtc *rtc = FUNC1(dev);
	struct rtc_time *tm = &alrm->time;
	u32 alarm = FUNC5(rtc, AR);
	u32 offset;

	offset = FUNC2(rtc);
	if (offset == 0)
		return -EILSEQ;

	FUNC3(alrm, 0, sizeof(alrm));
	if (alarm != ALARM_DISABLED && offset != 0) {
		FUNC4(offset + alarm, tm);

		FUNC0(dev, "%s: %4d-%02d-%02d %02d:%02d:%02d\n", "readalarm",
			1900 + tm->tm_year, tm->tm_mon, tm->tm_mday,
			tm->tm_hour, tm->tm_min, tm->tm_sec);

		if (FUNC5(rtc, MR) & AT91_RTT_ALMIEN)
			alrm->enabled = 1;
	}

	return 0;
}