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
struct video_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_FL_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct video_device*) ; 
 int /*<<< orphan*/  videodev_lock ; 

void FUNC5(struct video_device *vdev)
{
	/* Check if vdev was ever registered at all */
	if (!vdev || !FUNC4(vdev))
		return;

	FUNC2(&videodev_lock);
	/* This must be in a critical section to prevent a race with v4l2_open.
	 * Once this bit has been cleared video_get may never be called again.
	 */
	FUNC0(V4L2_FL_REGISTERED, &vdev->flags);
	FUNC3(&videodev_lock);
	FUNC1(&vdev->dev);
}