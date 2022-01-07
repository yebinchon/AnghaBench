
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_queue {size_t cq_vector; int q_suspended; int q_lock; } ;
struct nvme_dev {TYPE_1__* entry; struct nvme_queue** queues; } ;
struct TYPE_2__ {int vector; } ;


 int adapter_delete_cq (struct nvme_dev*,int) ;
 int adapter_delete_sq (struct nvme_dev*,int) ;
 int free_irq (int,struct nvme_queue*) ;
 int irq_set_affinity_hint (int,int *) ;
 int nvme_cancel_ios (struct nvme_queue*,int) ;
 int nvme_process_cq (struct nvme_queue*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void nvme_disable_queue(struct nvme_dev *dev, int qid)
{
 struct nvme_queue *nvmeq = dev->queues[qid];
 int vector = dev->entry[nvmeq->cq_vector].vector;

 spin_lock_irq(&nvmeq->q_lock);
 if (nvmeq->q_suspended) {
  spin_unlock_irq(&nvmeq->q_lock);
  return;
 }
 nvmeq->q_suspended = 1;
 spin_unlock_irq(&nvmeq->q_lock);

 irq_set_affinity_hint(vector, ((void*)0));
 free_irq(vector, nvmeq);


 if (qid) {
  adapter_delete_sq(dev, qid);
  adapter_delete_cq(dev, qid);
 }

 spin_lock_irq(&nvmeq->q_lock);
 nvme_process_cq(nvmeq);
 nvme_cancel_ios(nvmeq, 0);
 spin_unlock_irq(&nvmeq->q_lock);
}
