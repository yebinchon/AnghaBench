
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_wq {int * ctrl; int ** bufs; int ring; struct vnic_dev* vdev; } ;
struct vnic_dev {int dummy; } ;


 unsigned int VNIC_WQ_BUF_BLKS_MAX ;
 int kfree (int *) ;
 int vnic_dev_free_desc_ring (struct vnic_dev*,int *) ;

void vnic_wq_free(struct vnic_wq *wq)
{
 struct vnic_dev *vdev;
 unsigned int i;

 vdev = wq->vdev;

 vnic_dev_free_desc_ring(vdev, &wq->ring);

 for (i = 0; i < VNIC_WQ_BUF_BLKS_MAX; i++) {
  if (wq->bufs[i]) {
   kfree(wq->bufs[i]);
   wq->bufs[i] = ((void*)0);
  }
 }

 wq->ctrl = ((void*)0);
}
