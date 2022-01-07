
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct vnic_dev {int dummy; } ;
struct fnic {int * wq_lock; int * wq; } ;
struct cq_desc {int dummy; } ;


 int fnic_wq_complete_frame_send ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fnic* vnic_dev_priv (struct vnic_dev*) ;
 int vnic_wq_service (int *,struct cq_desc*,size_t,int ,int *) ;

__attribute__((used)) static int fnic_wq_cmpl_handler_cont(struct vnic_dev *vdev,
         struct cq_desc *cq_desc, u8 type,
         u16 q_number, u16 completed_index,
         void *opaque)
{
 struct fnic *fnic = vnic_dev_priv(vdev);
 unsigned long flags;

 spin_lock_irqsave(&fnic->wq_lock[q_number], flags);
 vnic_wq_service(&fnic->wq[q_number], cq_desc, completed_index,
   fnic_wq_complete_frame_send, ((void*)0));
 spin_unlock_irqrestore(&fnic->wq_lock[q_number], flags);

 return 0;
}
