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
struct ib_device_modify {int /*<<< orphan*/  sys_image_guid; int /*<<< orphan*/  node_desc; } ;
struct ib_device {int /*<<< orphan*/  node_desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  sys_image_guid; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int IB_DEVICE_MODIFY_NODE_DESC ; 
 int IB_DEVICE_MODIFY_SYS_IMAGE_GUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (struct ib_device*) ; 

__attribute__((used)) static int FUNC3(struct ib_device *device,
			       int device_modify_mask,
			       struct ib_device_modify *device_modify)
{
	int ret;

	if (device_modify_mask & ~(IB_DEVICE_MODIFY_SYS_IMAGE_GUID |
				   IB_DEVICE_MODIFY_NODE_DESC)) {
		ret = -EOPNOTSUPP;
		goto bail;
	}

	if (device_modify_mask & IB_DEVICE_MODIFY_NODE_DESC)
		FUNC1(device->node_desc, device_modify->node_desc, 64);

	if (device_modify_mask & IB_DEVICE_MODIFY_SYS_IMAGE_GUID)
		FUNC2(device)->sys_image_guid =
			FUNC0(device_modify->sys_image_guid);

	ret = 0;

bail:
	return ret;
}