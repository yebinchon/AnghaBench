
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct vxgedev {scalar_t__ vlgrp; } ;
struct vxge_vpath {int handle; scalar_t__ is_open; struct vxgedev* vdev; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;


 scalar_t__ VLAN_GROUP_ARRAY_LEN ;
 int VXGE_HW_OK ;
 int vlan_group_get_device (scalar_t__,scalar_t__) ;
 int vxge_hw_vpath_vid_add (int ,scalar_t__) ;

enum vxge_hw_status vxge_restore_vpath_vid_table(struct vxge_vpath *vpath)
{
 enum vxge_hw_status status = VXGE_HW_OK;
 struct vxgedev *vdev = vpath->vdev;
 u16 vid;

 if (vdev->vlgrp && vpath->is_open) {

  for (vid = 0; vid < VLAN_GROUP_ARRAY_LEN; vid++) {
   if (!vlan_group_get_device(vdev->vlgrp, vid))
    continue;

   status = vxge_hw_vpath_vid_add(vpath->handle, vid);
  }
 }

 return status;
}
