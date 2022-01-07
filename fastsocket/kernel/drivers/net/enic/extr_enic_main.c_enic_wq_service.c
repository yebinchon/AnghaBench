
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct vnic_dev {int dummy; } ;
struct enic {int * wq_lock; int netdev; int * wq; } ;
struct cq_desc {int dummy; } ;


 scalar_t__ ENIC_DESC_MAX_SPLITS ;
 scalar_t__ MAX_SKB_FRAGS ;
 int enic_wq_free_buf ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_wake_queue (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct enic* vnic_dev_priv (struct vnic_dev*) ;
 scalar_t__ vnic_wq_desc_avail (int *) ;
 int vnic_wq_service (int *,struct cq_desc*,size_t,int ,void*) ;

__attribute__((used)) static int enic_wq_service(struct vnic_dev *vdev, struct cq_desc *cq_desc,
 u8 type, u16 q_number, u16 completed_index, void *opaque)
{
 struct enic *enic = vnic_dev_priv(vdev);

 spin_lock(&enic->wq_lock[q_number]);

 vnic_wq_service(&enic->wq[q_number], cq_desc,
  completed_index, enic_wq_free_buf,
  opaque);

 if (netif_queue_stopped(enic->netdev) &&
     vnic_wq_desc_avail(&enic->wq[q_number]) >=
     (MAX_SKB_FRAGS + ENIC_DESC_MAX_SPLITS))
  netif_wake_queue(enic->netdev);

 spin_unlock(&enic->wq_lock[q_number]);

 return 0;
}
