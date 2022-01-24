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
struct ep93xx_rtc {scalar_t__ mmio_base; } ;
struct device {struct ep93xx_rtc* platform_data; } ;

/* Variables and functions */
 scalar_t__ EP93XX_RTC_DATA ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,struct rtc_time*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct rtc_time *tm)
{
	struct ep93xx_rtc *ep93xx_rtc = dev->platform_data;
	unsigned long time;

	 time = FUNC0(ep93xx_rtc->mmio_base + EP93XX_RTC_DATA);

	FUNC1(time, tm);
	return 0;
}