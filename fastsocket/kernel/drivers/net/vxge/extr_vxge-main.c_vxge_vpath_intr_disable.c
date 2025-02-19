
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ intr_type; } ;
struct vxgedev {TYPE_1__ config; struct vxge_vpath* vpaths; } ;
struct vxge_vpath {int device_id; TYPE_4__* handle; } ;
struct TYPE_10__ {TYPE_3__* vpath; } ;
struct TYPE_9__ {TYPE_2__* hldev; } ;
struct TYPE_8__ {int first_vp_id; } ;


 scalar_t__ INTA ;
 int VXGE_ALARM_MSIX_ID ;
 int VXGE_HW_VPATH_MSIX_ACTIVE ;
 int vxge_hw_vpath_inta_mask_tx_rx (TYPE_4__*) ;
 int vxge_hw_vpath_intr_disable (TYPE_4__*) ;
 int vxge_hw_vpath_msix_mask (TYPE_4__*,int) ;

void vxge_vpath_intr_disable(struct vxgedev *vdev, int vp_id)
{
 struct vxge_vpath *vpath = &vdev->vpaths[vp_id];
 int msix_id;

 vxge_hw_vpath_intr_disable(vpath->handle);

 if (vdev->config.intr_type == INTA)
  vxge_hw_vpath_inta_mask_tx_rx(vpath->handle);
 else {
  msix_id = vpath->device_id * VXGE_HW_VPATH_MSIX_ACTIVE;
  vxge_hw_vpath_msix_mask(vpath->handle, msix_id);
  vxge_hw_vpath_msix_mask(vpath->handle, msix_id + 1);


  msix_id = (vpath->handle->vpath->hldev->first_vp_id *
   VXGE_HW_VPATH_MSIX_ACTIVE) + VXGE_ALARM_MSIX_ID;
  vxge_hw_vpath_msix_mask(vpath->handle, msix_id);
 }
}
