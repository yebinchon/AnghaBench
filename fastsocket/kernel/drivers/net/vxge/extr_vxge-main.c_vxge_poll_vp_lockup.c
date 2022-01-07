
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vxgedev {int no_of_vpath; int vp_lockup_timer; TYPE_1__* vpaths; int vp_reset; } ;
struct TYPE_4__ {scalar_t__ prev_rx_frms; scalar_t__ rx_frms; } ;
struct vxge_ring {int last_status; TYPE_2__ stats; int handle; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;
struct TYPE_3__ {int fifo; struct vxge_ring ring; } ;


 int HZ ;
 int VXGE_HW_FAIL ;
 int VXGE_HW_OK ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int test_and_set_bit (int,int *) ;
 int vxge_hw_vpath_check_leak (int ) ;
 int vxge_stop_tx_queue (int *) ;
 int vxge_vpath_intr_disable (struct vxgedev*,int) ;

__attribute__((used)) static void vxge_poll_vp_lockup(unsigned long data)
{
 struct vxgedev *vdev = (struct vxgedev *)data;
 int i;
 struct vxge_ring *ring;
 enum vxge_hw_status status = VXGE_HW_OK;

 for (i = 0; i < vdev->no_of_vpath; i++) {
  ring = &vdev->vpaths[i].ring;

  if (ring->stats.prev_rx_frms == ring->stats.rx_frms) {
   status = vxge_hw_vpath_check_leak(ring->handle);


   if ((VXGE_HW_FAIL == status) &&
    (VXGE_HW_FAIL == ring->last_status)) {


    if (!test_and_set_bit(i, &vdev->vp_reset)) {


     vxge_vpath_intr_disable(vdev, i);


     vxge_stop_tx_queue(&vdev->vpaths[i].
        fifo);
     continue;
    }
   }
  }
  ring->stats.prev_rx_frms = ring->stats.rx_frms;
  ring->last_status = status;
 }


 mod_timer(&vdev->vp_lockup_timer, jiffies + HZ / 1000);
}
