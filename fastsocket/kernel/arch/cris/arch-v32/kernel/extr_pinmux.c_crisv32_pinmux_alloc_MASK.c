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
typedef  enum pin_mode { ____Placeholder_pin_mode } pin_mode ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int PORTS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ pinmux_gpio ; 
 int /*<<< orphan*/  pinmux_lock ; 
 scalar_t__ pinmux_none ; 
 scalar_t__** pins ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC5(int port, int first_pin, int last_pin, enum pin_mode mode)
{
	int i;
	unsigned long flags;

	FUNC0();

	if (port > PORTS)
		return -EINVAL;

	FUNC3(&pinmux_lock, flags);

	for (i = first_pin; i <= last_pin; i++)
	{
		if ((pins[port][i] != pinmux_none) && (pins[port][i] != pinmux_gpio) &&
		    (pins[port][i] != mode))
		{
			FUNC4(&pinmux_lock, flags);
#ifdef DEBUG
			panic("Pinmux alloc failed!\n");
#endif
			return -EPERM;
		}
	}

	for (i = first_pin; i <= last_pin; i++)
		pins[port][i] = mode;

	FUNC1(port);

	FUNC4(&pinmux_lock, flags);

	return 0;
}