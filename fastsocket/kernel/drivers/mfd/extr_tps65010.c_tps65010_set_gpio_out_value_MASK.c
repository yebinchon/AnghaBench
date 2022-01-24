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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EINVAL ; 
 int ENODEV ; 
 unsigned int GPIO1 ; 
 unsigned int GPIO4 ; 
#define  LOW 128 
 int /*<<< orphan*/  TPS_DEFGPIO ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned int,char*,unsigned int) ; 
 TYPE_1__* the_tps ; 

int FUNC5(unsigned gpio, unsigned value)
{
	int	 status;
	unsigned defgpio;

	if (!the_tps)
		return -ENODEV;
	if ((gpio < GPIO1) || (gpio > GPIO4))
		return -EINVAL;

	FUNC2(&the_tps->lock);

	defgpio = FUNC0(the_tps->client, TPS_DEFGPIO);

	/* Configure GPIO for output */
	defgpio |= 1 << (gpio + 3);

	/* Writing 1 forces a logic 0 on that GPIO and vice versa */
	switch (value) {
	case LOW:
		defgpio |= 1 << (gpio - 1);    /* set GPIO low by writing 1 */
		break;
	/* case HIGH: */
	default:
		defgpio &= ~(1 << (gpio - 1)); /* set GPIO high by writing 0 */
		break;
	}

	status = FUNC1(the_tps->client,
		TPS_DEFGPIO, defgpio);

	FUNC4("%s: gpio%dout = %s, defgpio 0x%02x\n", DRIVER_NAME,
		gpio, value ? "high" : "low",
		FUNC0(the_tps->client, TPS_DEFGPIO));

	FUNC3(&the_tps->lock);
	return status;
}