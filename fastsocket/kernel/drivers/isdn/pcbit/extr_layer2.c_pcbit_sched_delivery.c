
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcbit_dev {int qdelivery; } ;


 int schedule_work (int *) ;

__attribute__((used)) static __inline__ void
pcbit_sched_delivery(struct pcbit_dev *dev)
{
 schedule_work(&dev->qdelivery);
}
