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
struct rtc_time {int dummy; } ;
struct pl030_rtc {scalar_t__ base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RTC_LR ; 
 struct pl030_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (struct rtc_time*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tm)
{
	struct pl030_rtc *rtc = FUNC0(dev);
	unsigned long time;
	int ret;

	ret = FUNC1(tm, &time);
	if (ret == 0)
		FUNC2(time + 1, rtc->base + RTC_LR);

	return ret;
}