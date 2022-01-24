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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int* gpio_int_debounce ; 
 int /*<<< orphan*/ * int_debounce_register_offset ; 
 int FUNC2 (unsigned int) ; 

void FUNC3(unsigned int irq, int enable)
{
	int line = FUNC2(irq);
	int port = line >> 3;
	int port_mask = 1 << (line & 7);

	if (enable)
		gpio_int_debounce[port] |= port_mask;
	else
		gpio_int_debounce[port] &= ~port_mask;

	FUNC1(gpio_int_debounce[port],
		FUNC0(int_debounce_register_offset[port]));
}