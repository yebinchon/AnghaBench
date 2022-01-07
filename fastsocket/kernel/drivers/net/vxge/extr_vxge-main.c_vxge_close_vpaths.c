
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vpaths_open; } ;
struct vxgedev {int no_of_vpath; TYPE_2__* vpaths; TYPE_1__ stats; } ;
struct TYPE_4__ {int * handle; scalar_t__ is_open; } ;


 int vxge_hw_vpath_close (int *) ;

void vxge_close_vpaths(struct vxgedev *vdev, int index)
{
 int i;
 for (i = index; i < vdev->no_of_vpath; i++) {
  if (vdev->vpaths[i].handle && vdev->vpaths[i].is_open) {
   vxge_hw_vpath_close(vdev->vpaths[i].handle);
   vdev->stats.vpaths_open--;
  }
  vdev->vpaths[i].is_open = 0;
  vdev->vpaths[i].handle = ((void*)0);
 }
}
