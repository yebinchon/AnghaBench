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
struct cx231xx {scalar_t__ model; int /*<<< orphan*/ * vdev; int /*<<< orphan*/ * vbi_dev; int /*<<< orphan*/ * radio_dev; } ;

/* Variables and functions */
 scalar_t__ CX231XX_BOARD_CNXT_VIDEO_GRABBER ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct cx231xx *dev)
{

	/*FIXME: I2C IR should be disconnected */

	if (dev->radio_dev) {
		if (FUNC4(dev->radio_dev))
			FUNC5(dev->radio_dev);
		else
			FUNC3(dev->radio_dev);
		dev->radio_dev = NULL;
	}
	if (dev->vbi_dev) {
		FUNC1("V4L2 device %s deregistered\n",
			     FUNC2(dev->vbi_dev));
		if (FUNC4(dev->vbi_dev))
			FUNC5(dev->vbi_dev);
		else
			FUNC3(dev->vbi_dev);
		dev->vbi_dev = NULL;
	}
	if (dev->vdev) {
		FUNC1("V4L2 device %s deregistered\n",
			     FUNC2(dev->vdev));

		if (dev->model == CX231XX_BOARD_CNXT_VIDEO_GRABBER)
			FUNC0(dev);

		if (FUNC4(dev->vdev))
			FUNC5(dev->vdev);
		else
			FUNC3(dev->vdev);
		dev->vdev = NULL;
	}
}