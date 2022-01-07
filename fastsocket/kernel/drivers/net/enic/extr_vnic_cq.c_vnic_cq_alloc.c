
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_dev {int dummy; } ;
struct vnic_cq {unsigned int index; int ring; int ctrl; struct vnic_dev* vdev; } ;


 int EINVAL ;
 int RES_TYPE_CQ ;
 int pr_err (char*,unsigned int) ;
 int vnic_dev_alloc_desc_ring (struct vnic_dev*,int *,unsigned int,unsigned int) ;
 int vnic_dev_get_res (struct vnic_dev*,int ,unsigned int) ;

int vnic_cq_alloc(struct vnic_dev *vdev, struct vnic_cq *cq, unsigned int index,
 unsigned int desc_count, unsigned int desc_size)
{
 int err;

 cq->index = index;
 cq->vdev = vdev;

 cq->ctrl = vnic_dev_get_res(vdev, RES_TYPE_CQ, index);
 if (!cq->ctrl) {
  pr_err("Failed to hook CQ[%d] resource\n", index);
  return -EINVAL;
 }

 err = vnic_dev_alloc_desc_ring(vdev, &cq->ring, desc_count, desc_size);
 if (err)
  return err;

 return 0;
}
