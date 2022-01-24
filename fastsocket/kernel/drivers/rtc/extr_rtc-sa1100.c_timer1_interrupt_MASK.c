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
struct rtc_device {int dummy; } ;
struct platform_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  OSSR ; 
 int /*<<< orphan*/  OSSR_M1 ; 
 int RTC_IRQF ; 
 int RTC_PF ; 
 struct rtc_device* FUNC0 (struct platform_device*) ; 
 int rtc_freq ; 
 int rtc_timer1_count ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_device*,int,int) ; 
 int timer_freq ; 
 struct platform_device* FUNC2 (void*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct platform_device *pdev = FUNC2(dev_id);
	struct rtc_device *rtc = FUNC0(pdev);

	/*
	 * If we match for the first time, rtc_timer1_count will be 1.
	 * Otherwise, we wrapped around (very unlikely but
	 * still possible) so compute the amount of missed periods.
	 * The match reg is updated only when the data is actually retrieved
	 * to avoid unnecessary interrupts.
	 */
	OSSR = OSSR_M1;	/* clear match on timer1 */

	FUNC1(rtc, rtc_timer1_count, RTC_PF | RTC_IRQF);

	if (rtc_timer1_count == 1)
		rtc_timer1_count = (rtc_freq * ((1 << 30) / (timer_freq >> 2)));

	return IRQ_HANDLED;
}