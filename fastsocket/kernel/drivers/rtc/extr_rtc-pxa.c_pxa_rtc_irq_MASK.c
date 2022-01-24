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
typedef  int u32 ;
struct pxa_rtc {int /*<<< orphan*/  lock; int /*<<< orphan*/  rtc; } ;
struct platform_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned long RTC_AF ; 
 unsigned long RTC_IRQF ; 
 unsigned long RTC_PF ; 
 unsigned long RTC_UF ; 
 int /*<<< orphan*/  RTSR ; 
 int RTSR_HZ ; 
 int RTSR_HZE ; 
 int RTSR_PIAL ; 
 int RTSR_PIALE ; 
 int RTSR_RDAL1 ; 
 int RTSR_RDALE1 ; 
 int RTSR_TRIG_MASK ; 
 struct pxa_rtc* FUNC0 (struct platform_device*) ; 
 int FUNC1 (struct pxa_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_rtc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_rtc*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC7 (void*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct platform_device *pdev = FUNC7(dev_id);
	struct pxa_rtc *pxa_rtc = FUNC0(pdev);
	u32 rtsr;
	unsigned long events = 0;

	FUNC5(&pxa_rtc->lock);

	/* clear interrupt sources */
	rtsr = FUNC1(pxa_rtc, RTSR);
	FUNC3(pxa_rtc, RTSR, rtsr);

	/* temporary disable rtc interrupts */
	FUNC4(pxa_rtc, RTSR_RDALE1 | RTSR_PIALE | RTSR_HZE);

	/* clear alarm interrupt if it has occurred */
	if (rtsr & RTSR_RDAL1)
		rtsr &= ~RTSR_RDALE1;

	/* update irq data & counter */
	if (rtsr & RTSR_RDAL1)
		events |= RTC_AF | RTC_IRQF;
	if (rtsr & RTSR_HZ)
		events |= RTC_UF | RTC_IRQF;
	if (rtsr & RTSR_PIAL)
		events |= RTC_PF | RTC_IRQF;

	FUNC2(pxa_rtc->rtc, 1, events);

	/* enable back rtc interrupts */
	FUNC3(pxa_rtc, RTSR, rtsr & ~RTSR_TRIG_MASK);

	FUNC6(&pxa_rtc->lock);
	return IRQ_HANDLED;
}