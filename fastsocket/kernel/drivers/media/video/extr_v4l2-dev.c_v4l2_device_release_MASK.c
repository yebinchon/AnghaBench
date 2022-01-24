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
struct video_device {size_t minor; int /*<<< orphan*/  (* release ) (struct video_device*) ;int /*<<< orphan*/ * cdev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct video_device*) ; 
 struct video_device* FUNC6 (struct device*) ; 
 struct video_device** video_device ; 
 int /*<<< orphan*/  videodev_lock ; 

__attribute__((used)) static void FUNC7(struct device *cd)
{
	struct video_device *vdev = FUNC6(cd);

	FUNC3(&videodev_lock);
	if (video_device[vdev->minor] != vdev) {
		FUNC4(&videodev_lock);
		/* should not happen */
		FUNC0(1);
		return;
	}

	/* Free up this device for reuse */
	video_device[vdev->minor] = NULL;

	/* Delete the cdev on this minor as well */
	FUNC1(vdev->cdev);
	/* Just in case some driver tries to access this from
	   the release() callback. */
	vdev->cdev = NULL;

	/* Mark device node number as free */
	FUNC2(vdev);

	FUNC4(&videodev_lock);

	/* Release video_device and perform other
	   cleanups as needed. */
	vdev->release(vdev);
}