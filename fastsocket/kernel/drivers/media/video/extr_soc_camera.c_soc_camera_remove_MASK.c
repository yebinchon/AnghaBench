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
struct video_device {int dummy; } ;
struct soc_camera_link {int /*<<< orphan*/  regulators; int /*<<< orphan*/  num_regulators; int /*<<< orphan*/  (* del_device ) (struct soc_camera_link*) ;scalar_t__ board_info; } ;
struct soc_camera_device {struct video_device* vdev; } ;
struct device_driver {int /*<<< orphan*/  owner; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {struct device_driver* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct soc_camera_link*) ; 
 TYPE_1__* FUNC6 (struct soc_camera_device*) ; 
 struct soc_camera_device* FUNC7 (struct device*) ; 
 struct soc_camera_link* FUNC8 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct video_device*) ; 

__attribute__((used)) static int FUNC10(struct device *dev)
{
	struct soc_camera_device *icd = FUNC7(dev);
	struct soc_camera_link *icl = FUNC8(icd);
	struct video_device *vdev = icd->vdev;

	FUNC0(!dev->parent);

	if (vdev) {
		FUNC9(vdev);
		icd->vdev = NULL;
	}

	if (icl->board_info) {
		FUNC3(icd);
	} else {
		struct device_driver *drv = FUNC6(icd) ?
			FUNC6(icd)->driver : NULL;
		if (drv) {
			icl->del_device(icl);
			FUNC1(drv->owner);
		}
	}
	FUNC4(icd);

	FUNC2(icl->num_regulators, icl->regulators);

	return 0;
}