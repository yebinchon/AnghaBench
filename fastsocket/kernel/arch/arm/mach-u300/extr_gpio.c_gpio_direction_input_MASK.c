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
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 scalar_t__ virtbase ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

int FUNC5(unsigned gpio)
{
	unsigned long flags;
	u32 val;

	if (gpio > U300_GPIO_MAX)
		return -EINVAL;

	FUNC2(flags);
	val = FUNC3(virtbase + U300_GPIO_PXPCR + FUNC0(gpio) *
				U300_GPIO_PORTX_SPACING);
	/* Mask out this pin*/
	val &= ~(U300_GPIO_PXPCR_PIN_MODE_MASK << ((gpio & 0x07) << 1));
	/* This is not needed since it sets the bits to zero.*/
	/* val |= (U300_GPIO_PXPCR_PIN_MODE_INPUT << (gpio*2)); */
	FUNC4(val, virtbase + U300_GPIO_PXPCR + FUNC0(gpio) *
				U300_GPIO_PORTX_SPACING);
	FUNC1(flags);
	return 0;
}