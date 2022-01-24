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
struct cmos_rtc {int dummy; } ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (struct cmos_rtc*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 

__attribute__((used)) static void FUNC4(struct cmos_rtc *cmos, unsigned char mask)
{
	unsigned char	rtc_control;

	/* flush any pending IRQ status, notably for update irqs,
	 * before we enable new IRQs
	 */
	rtc_control = FUNC0(RTC_CONTROL);
	FUNC2(cmos, rtc_control);

	rtc_control |= mask;
	FUNC1(rtc_control, RTC_CONTROL);
	FUNC3(mask);

	FUNC2(cmos, rtc_control);
}