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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IRQ_RTCAlrm ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  PWER ; 
 int /*<<< orphan*/  PWER_RTC ; 
 int FUNC1 (int,unsigned int) ; 

__attribute__((used)) static int FUNC2(unsigned int irq, unsigned int on)
{
	int gpio = FUNC0(irq);
	uint32_t mask = 0;

	if (gpio >= 0 && gpio < 85)
		return FUNC1(gpio, on);

	if (irq == IRQ_RTCAlrm) {
		mask = PWER_RTC;
		goto set_pwer;
	}

	return -EINVAL;

set_pwer:
	if (on)
		PWER |= mask;
	else
		PWER &=~mask;

	return 0;
}