
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_wq_copy {int * ctrl; int ring; struct vnic_dev* vdev; } ;
struct vnic_dev {int dummy; } ;


 int vnic_dev_free_desc_ring (struct vnic_dev*,int *) ;

void vnic_wq_copy_free(struct vnic_wq_copy *wq)
{
 struct vnic_dev *vdev;

 vdev = wq->vdev;
 vnic_dev_free_desc_ring(vdev, &wq->ring);
 wq->ctrl = ((void*)0);
}
