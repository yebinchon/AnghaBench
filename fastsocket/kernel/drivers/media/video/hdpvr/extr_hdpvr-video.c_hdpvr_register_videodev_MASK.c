#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hdpvr_device {int /*<<< orphan*/  v4l2_dev; TYPE_1__* video_dev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device* parent; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 TYPE_1__ hdpvr_video_template ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct hdpvr_device*) ; 

int FUNC5(struct hdpvr_device *dev, struct device *parent,
			    int devnum)
{
	/* setup and register video device */
	dev->video_dev = FUNC2();
	if (!dev->video_dev) {
		FUNC1(&dev->v4l2_dev, "video_device_alloc() failed\n");
		goto error;
	}

	*(dev->video_dev) = hdpvr_video_template;
	FUNC0(dev->video_dev->name, "Hauppauge HD PVR");
	dev->video_dev->parent = parent;
	FUNC4(dev->video_dev, dev);

	if (FUNC3(dev->video_dev, VFL_TYPE_GRABBER, devnum)) {
		FUNC1(&dev->v4l2_dev, "video_device registration failed\n");
		goto error;
	}

	return 0;
error:
	return -ENOMEM;
}