
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {int queue_count; int ** queues; } ;


 int nvme_free_queue (int *) ;

__attribute__((used)) static void nvme_free_queues(struct nvme_dev *dev)
{
 int i;

 for (i = dev->queue_count - 1; i >= 0; i--) {
  nvme_free_queue(dev->queues[i]);
  dev->queue_count--;
  dev->queues[i] = ((void*)0);
 }
}
