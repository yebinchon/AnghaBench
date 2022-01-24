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
struct TYPE_2__ {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_TIME_REGS ; 
 int /*<<< orphan*/  REG_ALARM_SECONDS_REG ; 
 int /*<<< orphan*/  TWL4030_MODULE_RTC ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alm)
{
	unsigned char alarm_data[ALL_TIME_REGS + 1];
	int ret;

	ret = FUNC3(dev, 0);
	if (ret)
		goto out;

	alarm_data[1] = FUNC0(alm->time.tm_sec);
	alarm_data[2] = FUNC0(alm->time.tm_min);
	alarm_data[3] = FUNC0(alm->time.tm_hour);
	alarm_data[4] = FUNC0(alm->time.tm_mday);
	alarm_data[5] = FUNC0(alm->time.tm_mon + 1);
	alarm_data[6] = FUNC0(alm->time.tm_year - 100);

	/* update all the alarm registers in one shot */
	ret = FUNC2(TWL4030_MODULE_RTC, alarm_data,
			REG_ALARM_SECONDS_REG, ALL_TIME_REGS);
	if (ret) {
		FUNC1(dev, "rtc_set_alarm error %d\n", ret);
		goto out;
	}

	if (alm->enabled)
		ret = FUNC3(dev, 1);
out:
	return ret;
}