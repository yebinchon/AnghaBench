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
struct sh_rtc {int capabilities; int /*<<< orphan*/  lock; scalar_t__ regbase; } ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RCR2 ; 
 unsigned int RCR2_RESET ; 
 unsigned int RCR2_RTCEN ; 
 unsigned int RCR2_START ; 
 scalar_t__ RDAYCNT ; 
 scalar_t__ RHRCNT ; 
 scalar_t__ RMINCNT ; 
 scalar_t__ RMONCNT ; 
 scalar_t__ RSECCNT ; 
 int RTC_CAP_4_DIGIT_YEAR ; 
 scalar_t__ RWKCNT ; 
 scalar_t__ RYRCNT ; 
 unsigned int FUNC0 (int) ; 
 struct sh_rtc* FUNC1 (struct platform_device*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct rtc_time *tm)
{
	struct platform_device *pdev = FUNC5(dev);
	struct sh_rtc *rtc = FUNC1(pdev);
	unsigned int tmp;
	int year;

	FUNC3(&rtc->lock);

	/* Reset pre-scaler & stop RTC */
	tmp = FUNC2(rtc->regbase + RCR2);
	tmp |= RCR2_RESET;
	tmp &= ~RCR2_START;
	FUNC6(tmp, rtc->regbase + RCR2);

	FUNC6(FUNC0(tm->tm_sec),  rtc->regbase + RSECCNT);
	FUNC6(FUNC0(tm->tm_min),  rtc->regbase + RMINCNT);
	FUNC6(FUNC0(tm->tm_hour), rtc->regbase + RHRCNT);
	FUNC6(FUNC0(tm->tm_wday), rtc->regbase + RWKCNT);
	FUNC6(FUNC0(tm->tm_mday), rtc->regbase + RDAYCNT);
	FUNC6(FUNC0(tm->tm_mon + 1), rtc->regbase + RMONCNT);

	if (rtc->capabilities & RTC_CAP_4_DIGIT_YEAR) {
		year = (FUNC0((tm->tm_year + 1900) / 100) << 8) |
			FUNC0(tm->tm_year % 100);
		FUNC7(year, rtc->regbase + RYRCNT);
	} else {
		year = tm->tm_year % 100;
		FUNC6(FUNC0(year), rtc->regbase + RYRCNT);
	}

	/* Start RTC */
	tmp = FUNC2(rtc->regbase + RCR2);
	tmp &= ~RCR2_RESET;
	tmp |= RCR2_RTCEN | RCR2_START;
	FUNC6(tmp, rtc->regbase + RCR2);

	FUNC4(&rtc->lock);

	return 0;
}