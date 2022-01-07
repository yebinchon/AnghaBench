
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_rq {int index; TYPE_1__* ctrl; } ;
struct TYPE_2__ {int running; int enable; } ;


 int ETIMEDOUT ;
 int ioread32 (int *) ;
 int iowrite32 (int ,int *) ;
 int pr_err (char*,int ) ;
 int udelay (int) ;

int vnic_rq_disable(struct vnic_rq *rq)
{
 unsigned int wait;

 iowrite32(0, &rq->ctrl->enable);


 for (wait = 0; wait < 1000; wait++) {
  if (!(ioread32(&rq->ctrl->running)))
   return 0;
  udelay(10);
 }

 pr_err("Failed to disable RQ[%d]\n", rq->index);

 return -ETIMEDOUT;
}
