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
typedef  scalar_t__ u16 ;
struct vxgedev {scalar_t__ vlgrp; } ;
struct vxge_vpath {int /*<<< orphan*/  handle; scalar_t__ is_open; struct vxgedev* vdev; } ;
typedef  enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;

/* Variables and functions */
 scalar_t__ VLAN_GROUP_ARRAY_LEN ; 
 int VXGE_HW_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

enum vxge_hw_status FUNC2(struct vxge_vpath *vpath)
{
	enum vxge_hw_status status = VXGE_HW_OK;
	struct vxgedev *vdev = vpath->vdev;
	u16 vid;

	if (vdev->vlgrp && vpath->is_open) {

		for (vid = 0; vid < VLAN_GROUP_ARRAY_LEN; vid++) {
			if (!FUNC0(vdev->vlgrp, vid))
				continue;
			/* Add these vlan to the vid table */
			status = FUNC1(vpath->handle, vid);
		}
	}

	return status;
}