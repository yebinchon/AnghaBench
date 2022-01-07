
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct vnic_dev {int dummy; } ;
struct enic {int * rq; } ;
struct cq_desc {int dummy; } ;


 int VNIC_RQ_RETURN_DESC ;
 int enic_rq_indicate_buf ;
 struct enic* vnic_dev_priv (struct vnic_dev*) ;
 int vnic_rq_service (int *,struct cq_desc*,size_t,int ,int ,void*) ;

__attribute__((used)) static int enic_rq_service(struct vnic_dev *vdev, struct cq_desc *cq_desc,
 u8 type, u16 q_number, u16 completed_index, void *opaque)
{
 struct enic *enic = vnic_dev_priv(vdev);

 vnic_rq_service(&enic->rq[q_number], cq_desc,
  completed_index, VNIC_RQ_RETURN_DESC,
  enic_rq_indicate_buf, opaque);

 return 0;
}
