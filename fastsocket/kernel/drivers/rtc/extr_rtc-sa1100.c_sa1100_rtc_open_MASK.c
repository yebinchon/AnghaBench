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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int /*<<< orphan*/  IRQ_OST1 ; 
 int /*<<< orphan*/  IRQ_RTC1Hz ; 
 int /*<<< orphan*/  IRQ_RTCAlrm ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct device*) ; 
 int /*<<< orphan*/  sa1100_rtc_interrupt ; 
 int /*<<< orphan*/  timer1_interrupt ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	int ret;

	ret = FUNC2(IRQ_RTC1Hz, sa1100_rtc_interrupt, IRQF_DISABLED,
				"rtc 1Hz", dev);
	if (ret) {
		FUNC0(dev, "IRQ %d already in use.\n", IRQ_RTC1Hz);
		goto fail_ui;
	}
	ret = FUNC2(IRQ_RTCAlrm, sa1100_rtc_interrupt, IRQF_DISABLED,
				"rtc Alrm", dev);
	if (ret) {
		FUNC0(dev, "IRQ %d already in use.\n", IRQ_RTCAlrm);
		goto fail_ai;
	}
	ret = FUNC2(IRQ_OST1, timer1_interrupt, IRQF_DISABLED,
				"rtc timer", dev);
	if (ret) {
		FUNC0(dev, "IRQ %d already in use.\n", IRQ_OST1);
		goto fail_pi;
	}
	return 0;

 fail_pi:
	FUNC1(IRQ_RTCAlrm, dev);
 fail_ai:
	FUNC1(IRQ_RTC1Hz, dev);
 fail_ui:
	return ret;
}