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
typedef  int u16 ;
struct device {int dummy; } ;
struct bfin_rtc {int /*<<< orphan*/  rtc_dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned long RTC_AF ; 
 unsigned long RTC_IRQF ; 
 int RTC_ISTAT_ALARM ; 
 int RTC_ISTAT_ALARM_DAY ; 
 int RTC_ISTAT_SEC ; 
 int RTC_ISTAT_WRITE_COMPLETE ; 
 unsigned long RTC_UF ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  bfin_write_complete ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct bfin_rtc* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct device *dev = dev_id;
	struct bfin_rtc *rtc = FUNC5(dev);
	unsigned long events = 0;
	bool write_complete = false;
	u16 rtc_istat, rtc_ictl;

	FUNC4(dev);

	rtc_istat = FUNC1();
	rtc_ictl = FUNC0();

	if (rtc_istat & RTC_ISTAT_WRITE_COMPLETE) {
		FUNC2(RTC_ISTAT_WRITE_COMPLETE);
		write_complete = true;
		FUNC3(&bfin_write_complete);
	}

	if (rtc_ictl & (RTC_ISTAT_ALARM | RTC_ISTAT_ALARM_DAY)) {
		if (rtc_istat & (RTC_ISTAT_ALARM | RTC_ISTAT_ALARM_DAY)) {
			FUNC2(RTC_ISTAT_ALARM | RTC_ISTAT_ALARM_DAY);
			events |= RTC_AF | RTC_IRQF;
		}
	}

	if (rtc_ictl & RTC_ISTAT_SEC) {
		if (rtc_istat & RTC_ISTAT_SEC) {
			FUNC2(RTC_ISTAT_SEC);
			events |= RTC_UF | RTC_IRQF;
		}
	}

	if (events)
		FUNC6(rtc->rtc_dev, 1, events);

	if (write_complete || events)
		return IRQ_HANDLED;
	else
		return IRQ_NONE;
}