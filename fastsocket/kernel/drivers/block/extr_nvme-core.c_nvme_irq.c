
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {int q_lock; scalar_t__ cqe_seen; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int nvme_process_cq (struct nvme_queue*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t nvme_irq(int irq, void *data)
{
 irqreturn_t result;
 struct nvme_queue *nvmeq = data;
 spin_lock(&nvmeq->q_lock);
 nvme_process_cq(nvmeq);
 result = nvmeq->cqe_seen ? IRQ_HANDLED : IRQ_NONE;
 nvmeq->cqe_seen = 0;
 spin_unlock(&nvmeq->q_lock);
 return result;
}
