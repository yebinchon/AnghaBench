#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * parent; int /*<<< orphan*/  debug; } ;
struct stk_camera {TYPE_2__ vdev; TYPE_1__* interface; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  debug ; 
 TYPE_2__ stk_v4l_data ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct stk_camera *dev)
{
	int err;

	dev->vdev = stk_v4l_data;
	dev->vdev.debug = debug;
	dev->vdev.parent = &dev->interface->dev;
	err = FUNC3(&dev->vdev, VFL_TYPE_GRABBER, -1);
	if (err)
		FUNC0("v4l registration failed\n");
	else
		FUNC1("Syntek USB2.0 Camera is now controlling device %s\n",
			 FUNC2(&dev->vdev));
	return err;
}