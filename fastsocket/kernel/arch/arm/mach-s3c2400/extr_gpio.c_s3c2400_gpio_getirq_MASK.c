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

/* Variables and functions */
 int EINVAL ; 
 unsigned int IRQ_EINT0 ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(unsigned int pin)
{
	if (pin < FUNC1(0) || pin > FUNC0(7))
		return -EINVAL;  /* not valid interrupts */

	return (pin - FUNC1(0)) + IRQ_EINT0;
}