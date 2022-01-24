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
struct TYPE_2__ {int /*<<< orphan*/  num; } ;
struct cam_data {scalar_t__ open_count; TYPE_1__ vdev; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(struct cam_data *cam)
{
	FUNC0("unregistering video\n");
	FUNC4(&cam->vdev);
	if (cam->open_count) {
		FUNC3(cam->ops);
		FUNC0("camera open -- setting ops to NULL\n");
		cam->ops = NULL;
	}

#ifdef CONFIG_PROC_FS
	DBG("destroying /proc/cpia/video%d\n", cam->vdev.num);
	destroy_proc_cpia_cam(cam);
#endif
	if (!cam->open_count) {
		FUNC0("freeing camera\n");
		FUNC2(cam);
	}
}