#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uvc_device {TYPE_1__* udev; } ;
struct uvc_control_info {int /*<<< orphan*/  selector; int /*<<< orphan*/  entity; } ;
struct uvc_control {TYPE_2__* entity; scalar_t__ initialized; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  devpath; } ;

/* Variables and functions */
 int /*<<< orphan*/  UVC_TRACE_CONTROL ; 
 int FUNC0 (struct uvc_device*,struct uvc_control*,struct uvc_control_info*) ; 
 int FUNC1 (struct uvc_device*,struct uvc_control*,struct uvc_control_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct uvc_device *dev,
	struct uvc_control *ctrl)
{
	struct uvc_control_info info;
	int ret;

	if (ctrl->initialized)
		return 0;

	ret = FUNC1(dev, ctrl, &info);
	if (ret < 0)
		return ret;

	ret = FUNC0(dev, ctrl, &info);
	if (ret < 0)
		FUNC2(UVC_TRACE_CONTROL, "Failed to initialize control "
			  "%pUl/%u on device %s entity %u\n", info.entity,
			  info.selector, dev->udev->devpath, ctrl->entity->id);

	return ret;
}