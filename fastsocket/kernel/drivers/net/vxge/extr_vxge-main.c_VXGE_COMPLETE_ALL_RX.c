
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxgedev {int no_of_vpath; TYPE_1__* vpaths; } ;
struct vxge_ring {int handle; } ;
struct TYPE_2__ {struct vxge_ring ring; } ;


 int vxge_hw_vpath_poll_rx (int ) ;

__attribute__((used)) static inline void VXGE_COMPLETE_ALL_RX(struct vxgedev *vdev)
{
 int i;
 struct vxge_ring *ring;


 for (i = 0; i < vdev->no_of_vpath; i++) {
  ring = &vdev->vpaths[i].ring;
  vxge_hw_vpath_poll_rx(ring->handle);
 }
}
