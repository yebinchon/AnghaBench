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
struct rtc_time {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_year; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_mday; } ;
struct pcf50633_time {int /*<<< orphan*/ * time; } ;
struct pcf50633_rtc {int /*<<< orphan*/  pcf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCF50633_IRQ_ALARM ; 
 int /*<<< orphan*/  PCF50633_IRQ_SECOND ; 
 int /*<<< orphan*/  PCF50633_REG_RTCSC ; 
 size_t PCF50633_TI_DAY ; 
 int /*<<< orphan*/  PCF50633_TI_EXTENT ; 
 size_t PCF50633_TI_HOUR ; 
 size_t PCF50633_TI_MIN ; 
 size_t PCF50633_TI_MONTH ; 
 size_t PCF50633_TI_SEC ; 
 size_t PCF50633_TI_YEAR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pcf50633_rtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pcf50633_time*,struct rtc_time*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_time *tm)
{
	struct pcf50633_rtc *rtc;
	struct pcf50633_time pcf_tm;
	int second_masked, alarm_masked, ret = 0;

	rtc = FUNC1(dev);

	FUNC0(dev, "RTC_TIME: %u.%u.%u %u:%u:%u\n",
		tm->tm_mday, tm->tm_mon, tm->tm_year,
		tm->tm_hour, tm->tm_min, tm->tm_sec);

	FUNC6(&pcf_tm, tm);

	FUNC0(dev, "PCF_TIME: %02x.%02x.%02x %02x:%02x:%02x\n",
		pcf_tm.time[PCF50633_TI_DAY],
		pcf_tm.time[PCF50633_TI_MONTH],
		pcf_tm.time[PCF50633_TI_YEAR],
		pcf_tm.time[PCF50633_TI_HOUR],
		pcf_tm.time[PCF50633_TI_MIN],
		pcf_tm.time[PCF50633_TI_SEC]);


	second_masked = FUNC3(rtc->pcf, PCF50633_IRQ_SECOND);
	alarm_masked = FUNC3(rtc->pcf, PCF50633_IRQ_ALARM);

	if (!second_masked)
		FUNC2(rtc->pcf, PCF50633_IRQ_SECOND);
	if (!alarm_masked)
		FUNC2(rtc->pcf, PCF50633_IRQ_ALARM);

	/* Returns 0 on success */
	ret = FUNC5(rtc->pcf, PCF50633_REG_RTCSC,
					     PCF50633_TI_EXTENT,
					     &pcf_tm.time[0]);

	if (!second_masked)
		FUNC4(rtc->pcf, PCF50633_IRQ_SECOND);
	if (!alarm_masked)
		FUNC4(rtc->pcf, PCF50633_IRQ_ALARM);

	return ret;
}