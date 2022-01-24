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
typedef  int u8 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int RTC_AIE ; 
 int /*<<< orphan*/  RTC_CONTROL ; 
 int /*<<< orphan*/  RTC_INTR_FLAGS ; 
 int RTC_IRQF ; 
 int RTC_IRQMASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC5 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *p)
{
	u8		irqstat;
	u8		rtc_control;

	FUNC6(&rtc_lock);

	/* When the HPET interrupt handler calls us, the interrupt
	 * status is passed as arg1 instead of the irq number.  But
	 * always clear irq status, even when HPET is in the way.
	 *
	 * Note that HPET and RTC are almost certainly out of phase,
	 * giving different IRQ status ...
	 */
	irqstat = FUNC0(RTC_INTR_FLAGS);
	rtc_control = FUNC0(RTC_CONTROL);
	if (FUNC3())
		irqstat = (unsigned long)irq & 0xF0;
	irqstat &= (rtc_control & RTC_IRQMASK) | RTC_IRQF;

	/* All Linux RTC alarms should be treated as if they were oneshot.
	 * Similar code may be needed in system wakeup paths, in case the
	 * alarm woke the system.
	 */
	if (irqstat & RTC_AIE) {
		rtc_control &= ~RTC_AIE;
		FUNC1(rtc_control, RTC_CONTROL);
		FUNC2(RTC_AIE);

		FUNC0(RTC_INTR_FLAGS);
	}
	FUNC7(&rtc_lock);

	if (FUNC4(irqstat)) {
		FUNC5(p, 1, irqstat);
		return IRQ_HANDLED;
	} else
		return IRQ_NONE;
}