
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {int dummy; } ;
struct nvme_dev {struct nvme_queue** queues; } ;


 int get_cpu () ;

struct nvme_queue *get_nvmeq(struct nvme_dev *dev)
{
 return dev->queues[get_cpu() + 1];
}
