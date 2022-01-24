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
typedef  unsigned int u32 ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (unsigned int) ; 
 unsigned int U300_GPIO_MAX ; 
 int U300_GPIO_PORTX_SPACING ; 
 scalar_t__ U300_GPIO_PXPCR ; 
 unsigned int U300_GPIO_PXPCR_PIN_MODE_MASK ; 
 unsigned int U300_GPIO_PXPCR_PIN_MODE_OUTPUT_PUSH_PULL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 scalar_t__ virtbase ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

int FUNC6(unsigned gpio, int value)
{
	unsigned long flags;
	u32 val;

	if (gpio > U300_GPIO_MAX)
		return -EINVAL;

	FUNC3(flags);
	val = FUNC4(virtbase + U300_GPIO_PXPCR + FUNC0(gpio) *
				U300_GPIO_PORTX_SPACING);
	/* Mask out this pin */
	val &= ~(U300_GPIO_PXPCR_PIN_MODE_MASK << ((gpio & 0x07) << 1));
	/*
	 * FIXME: configure for push/pull, open drain or open source per pin
	 * in setup. The current driver will only support push/pull.
	 */
	val |= (U300_GPIO_PXPCR_PIN_MODE_OUTPUT_PUSH_PULL
			<< ((gpio & 0x07) << 1));
	FUNC5(val, virtbase + U300_GPIO_PXPCR + FUNC0(gpio) *
				U300_GPIO_PORTX_SPACING);
	FUNC1(gpio, value);
	FUNC2(flags);
	return 0;
}