
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxgedev {int no_of_vpath; TYPE_1__* vpaths; } ;
struct TYPE_2__ {int fifo; } ;


 int VXGE_COMPLETE_VPATH_TX (int *) ;

__attribute__((used)) static inline void VXGE_COMPLETE_ALL_TX(struct vxgedev *vdev)
{
 int i;


 for (i = 0; i < vdev->no_of_vpath; i++)
  VXGE_COMPLETE_VPATH_TX(&vdev->vpaths[i].fifo);
}
