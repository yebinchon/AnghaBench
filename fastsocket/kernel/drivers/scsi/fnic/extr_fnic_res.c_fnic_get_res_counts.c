
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {int vdev; void* intr_count; void* cq_count; void* rq_count; void* raw_wq_count; void* wq_count; void* wq_copy_count; } ;


 int RES_TYPE_CQ ;
 int RES_TYPE_INTR_CTRL ;
 int RES_TYPE_RQ ;
 int RES_TYPE_WQ ;
 void* vnic_dev_get_res_count (int ,int ) ;

void fnic_get_res_counts(struct fnic *fnic)
{
 fnic->wq_count = vnic_dev_get_res_count(fnic->vdev, RES_TYPE_WQ);
 fnic->raw_wq_count = fnic->wq_count - 1;
 fnic->wq_copy_count = fnic->wq_count - fnic->raw_wq_count;
 fnic->rq_count = vnic_dev_get_res_count(fnic->vdev, RES_TYPE_RQ);
 fnic->cq_count = vnic_dev_get_res_count(fnic->vdev, RES_TYPE_CQ);
 fnic->intr_count = vnic_dev_get_res_count(fnic->vdev,
  RES_TYPE_INTR_CTRL);
}
