
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {int q_lock; } ;


 int cancel_cmdid (struct nvme_queue*,int,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void nvme_abort_command(struct nvme_queue *nvmeq, int cmdid)
{
 spin_lock_irq(&nvmeq->q_lock);
 cancel_cmdid(nvmeq, cmdid, ((void*)0));
 spin_unlock_irq(&nvmeq->q_lock);
}
