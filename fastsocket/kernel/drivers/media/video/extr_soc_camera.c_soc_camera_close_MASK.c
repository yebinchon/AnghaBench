#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct soc_camera_link {int dummy; } ;
struct soc_camera_host {TYPE_2__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {TYPE_3__ dev; struct file* streamer; TYPE_1__* vdev; int /*<<< orphan*/  use_count; } ;
struct file {struct soc_camera_device* private_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* remove ) (struct soc_camera_device*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct soc_camera_device*,struct soc_camera_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct soc_camera_device*) ; 
 struct soc_camera_host* FUNC6 (int /*<<< orphan*/ ) ; 
 struct soc_camera_link* FUNC7 (struct soc_camera_device*) ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct soc_camera_device *icd = file->private_data;
	struct soc_camera_host *ici = FUNC6(icd->dev.parent);

	icd->use_count--;
	if (!icd->use_count) {
		struct soc_camera_link *icl = FUNC7(icd);

		FUNC3(&icd->vdev->dev);
		FUNC2(&icd->vdev->dev);

		ici->ops->remove(icd);

		FUNC4(icd, icl, 0);
	}

	if (icd->streamer == file)
		icd->streamer = NULL;

	FUNC1(ici->ops->owner);

	FUNC0(&icd->dev, "camera device close\n");

	return 0;
}