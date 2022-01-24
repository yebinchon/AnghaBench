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
struct video_device {int /*<<< orphan*/  name; int /*<<< orphan*/  release; int /*<<< orphan*/ * fops; int /*<<< orphan*/ * parent; } ;
struct uvc_streaming {struct video_device* vdev; } ;
struct uvc_device {int /*<<< orphan*/  nstreams; int /*<<< orphan*/  name; TYPE_1__* intf; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  uvc_fops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  uvc_release ; 
 int FUNC3 (struct uvc_streaming*) ; 
 struct video_device* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct video_device*) ; 
 int FUNC6 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct video_device*,struct uvc_streaming*) ; 

__attribute__((used)) static int FUNC8(struct uvc_device *dev,
		struct uvc_streaming *stream)
{
	struct video_device *vdev;
	int ret;

	/* Initialize the streaming interface with default streaming
	 * parameters.
	 */
	ret = FUNC3(stream);
	if (ret < 0) {
		FUNC2(KERN_ERR, "Failed to initialize the device "
			"(%d).\n", ret);
		return ret;
	}

	/* Register the device with V4L. */
	vdev = FUNC4();
	if (vdev == NULL) {
		FUNC2(KERN_ERR, "Failed to allocate video device (%d).\n",
			   ret);
		return -ENOMEM;
	}

	/* We already hold a reference to dev->udev. The video device will be
	 * unregistered before the reference is released, so we don't need to
	 * get another one.
	 */
	vdev->parent = &dev->intf->dev;
	vdev->fops = &uvc_fops;
	vdev->release = uvc_release;
	FUNC1(vdev->name, dev->name, sizeof vdev->name);

	/* Set the driver data before calling video_register_device, otherwise
	 * uvc_v4l2_open might race us.
	 */
	stream->vdev = vdev;
	FUNC7(vdev, stream);

	ret = FUNC6(vdev, VFL_TYPE_GRABBER, -1);
	if (ret < 0) {
		FUNC2(KERN_ERR, "Failed to register video device (%d).\n",
			   ret);
		stream->vdev = NULL;
		FUNC5(vdev);
		return ret;
	}

	FUNC0(&dev->nstreams);
	return 0;
}