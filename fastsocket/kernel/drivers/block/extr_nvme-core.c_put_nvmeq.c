
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {int dummy; } ;


 int put_cpu () ;

void put_nvmeq(struct nvme_queue *nvmeq)
{
 put_cpu();
}
