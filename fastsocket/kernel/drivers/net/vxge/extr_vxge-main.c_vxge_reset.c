
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxgedev {int dummy; } ;


 int VXGE_LL_FULL_RESET ;
 int do_vxge_reset (struct vxgedev*,int ) ;

int vxge_reset(struct vxgedev *vdev)
{
 do_vxge_reset(vdev, VXGE_LL_FULL_RESET);
 return 0;
}
