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
struct rtc_wkalrm {int enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;
struct bfin_rtc {int /*<<< orphan*/  rtc_alarm; } ;

/* Variables and functions */
 int RTC_ISTAT_ALARM ; 
 int RTC_ISTAT_ALARM_DAY ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct bfin_rtc* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct bfin_rtc *rtc = FUNC3(dev);
	FUNC2(dev);
	alrm->time = rtc->rtc_alarm;
	FUNC1(dev);
	alrm->enabled = !!(FUNC0() & (RTC_ISTAT_ALARM | RTC_ISTAT_ALARM_DAY));
	return 0;
}