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
 unsigned long RTC_AF ; 
 unsigned long RTC_IRQF ; 
 unsigned long RTC_UF ; 
 unsigned int RTSR ; 
 unsigned int RTSR_AL ; 
 unsigned int RTSR_ALE ; 
 unsigned int RTSR_HZ ; 
 unsigned int RTSR_HZE ; 
 struct rtc_device* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  rtc_alarm ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_device*,int,unsigned long) ; 
 int /*<<< orphan*/  sa1100_rtc_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC6 (void*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct platform_device *pdev = FUNC6(dev_id);
	struct rtc_device *rtc = FUNC0(pdev);
	unsigned int rtsr;
	unsigned long events = 0;

	FUNC4(&sa1100_rtc_lock);

	rtsr = RTSR;
	/* clear interrupt sources */
	RTSR = 0;
	RTSR = (RTSR_AL | RTSR_HZ) & (rtsr >> 2);

	/* clear alarm interrupt if it has occurred */
	if (rtsr & RTSR_AL)
		rtsr &= ~RTSR_ALE;
	RTSR = rtsr & (RTSR_ALE | RTSR_HZE);

	/* update irq data & counter */
	if (rtsr & RTSR_AL)
		events |= RTC_AF | RTC_IRQF;
	if (rtsr & RTSR_HZ)
		events |= RTC_UF | RTC_IRQF;

	FUNC3(rtc, 1, events);

	if (rtsr & RTSR_AL && FUNC1(&rtc_alarm))
		FUNC2(&rtc_alarm);

	FUNC5(&sa1100_rtc_lock);

	return IRQ_HANDLED;
}