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
 int /*<<< orphan*/  GP1_IO_BASE ; 
 int /*<<< orphan*/  GP2_IO_BASE ; 
 unsigned int current_gpio_op ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 

void FUNC1(unsigned int mask, unsigned int set)
{
	unsigned int new_gpio, changed;

	new_gpio = (current_gpio_op & ~mask) | set;
	changed = new_gpio ^ current_gpio_op;
	current_gpio_op = new_gpio;

	if (changed & 0xff)
		FUNC0(new_gpio, GP1_IO_BASE);
	if (changed & 0xff00)
		FUNC0(new_gpio >> 8, GP2_IO_BASE);
}