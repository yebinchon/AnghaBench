
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {size_t cq_head; int cq_phase; struct nvme_completion* cqes; } ;
struct nvme_completion {int status; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static irqreturn_t nvme_irq_check(int irq, void *data)
{
 struct nvme_queue *nvmeq = data;
 struct nvme_completion cqe = nvmeq->cqes[nvmeq->cq_head];
 if ((le16_to_cpu(cqe.status) & 1) != nvmeq->cq_phase)
  return IRQ_NONE;
 return IRQ_WAKE_THREAD;
}
