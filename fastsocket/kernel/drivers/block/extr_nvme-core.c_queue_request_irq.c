
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_queue {size_t cq_vector; } ;
struct nvme_dev {TYPE_1__* entry; } ;
struct TYPE_2__ {int vector; } ;


 int IRQF_DISABLED ;
 int IRQF_SHARED ;
 int nvme_irq ;
 int nvme_irq_check ;
 int request_irq (int ,int ,int,char const*,struct nvme_queue*) ;
 int request_threaded_irq (int ,int ,int ,int,char const*,struct nvme_queue*) ;
 scalar_t__ use_threaded_interrupts ;

__attribute__((used)) static int queue_request_irq(struct nvme_dev *dev, struct nvme_queue *nvmeq,
       const char *name)
{
 if (use_threaded_interrupts)
  return request_threaded_irq(dev->entry[nvmeq->cq_vector].vector,
     nvme_irq_check, nvme_irq,
     IRQF_DISABLED | IRQF_SHARED,
     name, nvmeq);
 return request_irq(dev->entry[nvmeq->cq_vector].vector, nvme_irq,
    IRQF_DISABLED | IRQF_SHARED, name, nvmeq);
}
