
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vxgedev {TYPE_2__* vpaths; int vp_reset; int state; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;
struct TYPE_4__ {scalar_t__ last_status; } ;
struct TYPE_5__ {int fifo; TYPE_1__ ring; scalar_t__ handle; } ;


 int VXGE_ERR ;
 int VXGE_HW_FAIL ;
 scalar_t__ VXGE_HW_OK ;
 int __VXGE_STATE_RESET_CARD ;
 int clear_bit (int,int *) ;
 scalar_t__ is_vxge_card_up (struct vxgedev*) ;
 int smp_wmb () ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int vxge_debug_init (int ,char*,int) ;
 int vxge_hw_vpath_bcast_enable (scalar_t__) ;
 int vxge_hw_vpath_enable (scalar_t__) ;
 scalar_t__ vxge_hw_vpath_recover_from_reset (scalar_t__) ;
 scalar_t__ vxge_hw_vpath_reset (scalar_t__) ;
 int vxge_hw_vpath_rx_doorbell_init (scalar_t__) ;
 int vxge_restore_vpath_mac_addr (TYPE_2__*) ;
 int vxge_restore_vpath_vid_table (TYPE_2__*) ;
 int vxge_vpath_intr_enable (struct vxgedev*,int) ;
 int vxge_wake_tx_queue (int *,int *) ;

__attribute__((used)) static int vxge_reset_vpath(struct vxgedev *vdev, int vp_id)
{
 enum vxge_hw_status status = VXGE_HW_OK;
 int ret = 0;


 if (unlikely(!is_vxge_card_up(vdev)))
  return 0;


 if (test_bit(__VXGE_STATE_RESET_CARD, &vdev->state))
  return 0;

 if (vdev->vpaths[vp_id].handle) {
  if (vxge_hw_vpath_reset(vdev->vpaths[vp_id].handle)
    == VXGE_HW_OK) {
   if (is_vxge_card_up(vdev) &&
    vxge_hw_vpath_recover_from_reset(
     vdev->vpaths[vp_id].handle)
     != VXGE_HW_OK) {
    vxge_debug_init(VXGE_ERR,
     "vxge_hw_vpath_recover_from_reset"
     "failed for vpath:%d", vp_id);
    return status;
   }
  } else {
   vxge_debug_init(VXGE_ERR,
    "vxge_hw_vpath_reset failed for"
    "vpath:%d", vp_id);
    return status;
  }
 } else
  return VXGE_HW_FAIL;

 vxge_restore_vpath_mac_addr(&vdev->vpaths[vp_id]);
 vxge_restore_vpath_vid_table(&vdev->vpaths[vp_id]);


 vxge_hw_vpath_bcast_enable(vdev->vpaths[vp_id].handle);


 vxge_vpath_intr_enable(vdev, vp_id);

 smp_wmb();


 vxge_hw_vpath_enable(vdev->vpaths[vp_id].handle);

 smp_wmb();
 vxge_hw_vpath_rx_doorbell_init(vdev->vpaths[vp_id].handle);
 vdev->vpaths[vp_id].ring.last_status = VXGE_HW_OK;


 clear_bit(vp_id, &vdev->vp_reset);


 vxge_wake_tx_queue(&vdev->vpaths[vp_id].fifo, ((void*)0));

 return ret;
}
