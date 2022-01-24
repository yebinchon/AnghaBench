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
struct em28xx {int devno; int /*<<< orphan*/  udev; int /*<<< orphan*/  v4l2_dev; scalar_t__ ir; scalar_t__ sbutton_input_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct em28xx*) ; 
 int em28xx_devused ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC4 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct em28xx *dev)
{
	if (dev->sbutton_input_dev)
		FUNC0(dev);

	if (dev->ir)
		FUNC2(dev);

	/*FIXME: I2C IR should be disconnected */

	FUNC3(dev);

	FUNC4(dev);

	FUNC1(dev);

	FUNC6(&dev->v4l2_dev);

	FUNC5(dev->udev);

	/* Mark device as unused */
	em28xx_devused &= ~(1 << dev->devno);
}