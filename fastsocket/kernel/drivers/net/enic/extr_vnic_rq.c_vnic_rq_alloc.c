
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_rq {unsigned int index; int ring; int ctrl; struct vnic_dev* vdev; } ;
struct vnic_dev {int dummy; } ;


 int EINVAL ;
 int RES_TYPE_RQ ;
 int pr_err (char*,unsigned int) ;
 int vnic_dev_alloc_desc_ring (struct vnic_dev*,int *,unsigned int,unsigned int) ;
 int vnic_dev_get_res (struct vnic_dev*,int ,unsigned int) ;
 int vnic_rq_alloc_bufs (struct vnic_rq*) ;
 int vnic_rq_disable (struct vnic_rq*) ;
 int vnic_rq_free (struct vnic_rq*) ;

int vnic_rq_alloc(struct vnic_dev *vdev, struct vnic_rq *rq, unsigned int index,
 unsigned int desc_count, unsigned int desc_size)
{
 int err;

 rq->index = index;
 rq->vdev = vdev;

 rq->ctrl = vnic_dev_get_res(vdev, RES_TYPE_RQ, index);
 if (!rq->ctrl) {
  pr_err("Failed to hook RQ[%d] resource\n", index);
  return -EINVAL;
 }

 vnic_rq_disable(rq);

 err = vnic_dev_alloc_desc_ring(vdev, &rq->ring, desc_count, desc_size);
 if (err)
  return err;

 err = vnic_rq_alloc_bufs(rq);
 if (err) {
  vnic_rq_free(rq);
  return err;
 }

 return 0;
}
