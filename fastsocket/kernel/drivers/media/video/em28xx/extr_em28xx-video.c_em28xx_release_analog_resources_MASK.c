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
struct em28xx {int /*<<< orphan*/ * vdev; int /*<<< orphan*/ * vbi_dev; int /*<<< orphan*/ * radio_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct em28xx *dev)
{

	/*FIXME: I2C IR should be disconnected */

	if (dev->radio_dev) {
		if (FUNC3(dev->radio_dev))
			FUNC4(dev->radio_dev);
		else
			FUNC2(dev->radio_dev);
		dev->radio_dev = NULL;
	}
	if (dev->vbi_dev) {
		FUNC0("V4L2 device %s deregistered\n",
			    FUNC1(dev->vbi_dev));
		if (FUNC3(dev->vbi_dev))
			FUNC4(dev->vbi_dev);
		else
			FUNC2(dev->vbi_dev);
		dev->vbi_dev = NULL;
	}
	if (dev->vdev) {
		FUNC0("V4L2 device %s deregistered\n",
			    FUNC1(dev->vdev));
		if (FUNC3(dev->vdev))
			FUNC4(dev->vdev);
		else
			FUNC2(dev->vdev);
		dev->vdev = NULL;
	}
}