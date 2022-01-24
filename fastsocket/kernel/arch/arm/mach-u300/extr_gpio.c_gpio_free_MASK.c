#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ users; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 TYPE_1__* gpio_pin ; 
 int /*<<< orphan*/  gpio_users ; 
 int /*<<< orphan*/  gpiodev ; 
 scalar_t__ FUNC1 (int) ; 

void FUNC2(unsigned gpio)
{
	gpio_users--;
	gpio_pin[gpio].users--;
	if (FUNC1(gpio_pin[gpio].users < 0)) {
		FUNC0(gpiodev, "warning: gpio#%d release mismatch\n",
			 gpio);
		gpio_pin[gpio].users = 0;
	}

	return;
}