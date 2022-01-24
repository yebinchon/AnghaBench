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
struct device {int dummy; } ;
struct bfin_rtc {int dummy; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
#define  RTC_AIE_OFF 131 
#define  RTC_AIE_ON 130 
 int RTC_ISTAT_ALARM ; 
 int RTC_ISTAT_ALARM_DAY ; 
 int RTC_ISTAT_SEC ; 
#define  RTC_UIE_OFF 129 
#define  RTC_UIE_ON 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfin_rtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct bfin_rtc* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, unsigned int cmd, unsigned long arg)
{
	struct bfin_rtc *rtc = FUNC5(dev);
	int ret = 0;

	FUNC4(dev);

	FUNC3(dev);

	switch (cmd) {
	case RTC_UIE_ON:
		FUNC4(dev);
		FUNC1(RTC_ISTAT_SEC);
		break;
	case RTC_UIE_OFF:
		FUNC4(dev);
		FUNC0(~RTC_ISTAT_SEC);
		break;

	case RTC_AIE_ON:
		FUNC4(dev);
		FUNC2(rtc);
		break;
	case RTC_AIE_OFF:
		FUNC4(dev);
		FUNC0(~(RTC_ISTAT_ALARM | RTC_ISTAT_ALARM_DAY));
		break;

	default:
		FUNC4(dev);
		ret = -ENOIOCTLCMD;
	}

	return ret;
}