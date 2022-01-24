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
struct video_device {void* tvnorms; int /*<<< orphan*/  release; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; void* current_norm; TYPE_1__* parent; int /*<<< orphan*/  name; } ;
struct soc_camera_host {int /*<<< orphan*/  drv_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {struct video_device* vdev; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* V4L2_STD_UNKNOWN ; 
 int /*<<< orphan*/  soc_camera_fops ; 
 int /*<<< orphan*/  soc_camera_ioctl_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct soc_camera_host* FUNC1 (int /*<<< orphan*/ ) ; 
 struct video_device* FUNC2 () ; 
 int /*<<< orphan*/  video_device_release ; 

__attribute__((used)) static int FUNC3(struct soc_camera_device *icd)
{
	struct soc_camera_host *ici = FUNC1(icd->dev.parent);
	struct video_device *vdev = FUNC2();

	if (!vdev)
		return -ENOMEM;

	FUNC0(vdev->name, ici->drv_name, sizeof(vdev->name));

	vdev->parent		= &icd->dev;
	vdev->current_norm	= V4L2_STD_UNKNOWN;
	vdev->fops		= &soc_camera_fops;
	vdev->ioctl_ops		= &soc_camera_ioctl_ops;
	vdev->release		= video_device_release;
	vdev->tvnorms		= V4L2_STD_UNKNOWN;

	icd->vdev = vdev;

	return 0;
}