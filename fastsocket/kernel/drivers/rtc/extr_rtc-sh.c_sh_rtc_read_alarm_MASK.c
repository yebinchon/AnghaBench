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
struct sh_rtc {int /*<<< orphan*/  lock; scalar_t__ regbase; } ;
struct rtc_time {scalar_t__ tm_mon; int tm_year; void* tm_mday; void* tm_wday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RCR1 ; 
 int RCR1_AIE ; 
 int /*<<< orphan*/  RDAYAR ; 
 int /*<<< orphan*/  RHRAR ; 
 int /*<<< orphan*/  RMINAR ; 
 int /*<<< orphan*/  RMONAR ; 
 int /*<<< orphan*/  RSECAR ; 
 int /*<<< orphan*/  RWKAR ; 
 struct sh_rtc* FUNC0 (struct platform_device*) ; 
 int FUNC1 (scalar_t__) ; 
 void* FUNC2 (struct sh_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *wkalrm)
{
	struct platform_device *pdev = FUNC5(dev);
	struct sh_rtc *rtc = FUNC0(pdev);
	struct rtc_time *tm = &wkalrm->time;

	FUNC3(&rtc->lock);

	tm->tm_sec	= FUNC2(rtc, RSECAR);
	tm->tm_min	= FUNC2(rtc, RMINAR);
	tm->tm_hour	= FUNC2(rtc, RHRAR);
	tm->tm_wday	= FUNC2(rtc, RWKAR);
	tm->tm_mday	= FUNC2(rtc, RDAYAR);
	tm->tm_mon	= FUNC2(rtc, RMONAR);
	if (tm->tm_mon > 0)
		tm->tm_mon -= 1; /* RTC is 1-12, tm_mon is 0-11 */
	tm->tm_year     = 0xffff;

	wkalrm->enabled = (FUNC1(rtc->regbase + RCR1) & RCR1_AIE) ? 1 : 0;

	FUNC4(&rtc->lock);

	return 0;
}