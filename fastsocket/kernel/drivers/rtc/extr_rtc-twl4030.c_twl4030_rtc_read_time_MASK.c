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
typedef  int /*<<< orphan*/  u8 ;
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_TIME_REGS ; 
 int /*<<< orphan*/  BIT_RTC_CTRL_REG_GET_TIME_M ; 
 int /*<<< orphan*/  REG_RTC_CTRL_REG ; 
 int /*<<< orphan*/  REG_SECONDS_REG ; 
 int /*<<< orphan*/  TWL4030_MODULE_RTC ; 
 void* FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	unsigned char rtc_data[ALL_TIME_REGS + 1];
	int ret;
	u8 save_control;

	ret = FUNC3(&save_control, REG_RTC_CTRL_REG);
	if (ret < 0)
		return ret;

	save_control |= BIT_RTC_CTRL_REG_GET_TIME_M;

	ret = FUNC4(save_control, REG_RTC_CTRL_REG);
	if (ret < 0)
		return ret;

	ret = FUNC2(TWL4030_MODULE_RTC, rtc_data,
			       REG_SECONDS_REG, ALL_TIME_REGS);

	if (ret < 0) {
		FUNC1(dev, "rtc_read_time error %d\n", ret);
		return ret;
	}

	tm->tm_sec = FUNC0(rtc_data[0]);
	tm->tm_min = FUNC0(rtc_data[1]);
	tm->tm_hour = FUNC0(rtc_data[2]);
	tm->tm_mday = FUNC0(rtc_data[3]);
	tm->tm_mon = FUNC0(rtc_data[4]) - 1;
	tm->tm_year = FUNC0(rtc_data[5]) + 100;

	return ret;
}