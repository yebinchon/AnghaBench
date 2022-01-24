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
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int DM355EVM_MSP_LED ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (int) ; 
 int msp_led_cache ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned offset)
{
	int reg, status;

	reg = FUNC1(offset);
	status = FUNC2(reg);
	if (status < 0)
		return status;
	if (reg == DM355EVM_MSP_LED)
		msp_led_cache = status;
	return status & FUNC0(offset);
}