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
struct rc_dev {scalar_t__ driver_type; int /*<<< orphan*/  dev; int /*<<< orphan*/  rc_map; int /*<<< orphan*/ * input_dev; int /*<<< orphan*/  timer_keyup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ RC_DRIVER_IR_RAW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rc_dev*) ; 

void FUNC6(struct rc_dev *dev)
{
	if (!dev)
		return;

	FUNC1(&dev->timer_keyup);

	if (dev->driver_type == RC_DRIVER_IR_RAW)
		FUNC5(dev);

	FUNC3(dev->input_dev);
	dev->input_dev = NULL;

	FUNC4(&dev->rc_map);
	FUNC0(1, "Freed keycode table\n");

	FUNC2(&dev->dev);
}