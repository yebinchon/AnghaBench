
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct nvme_queue {size_t sq_tail; size_t q_depth; int q_lock; int q_db; int * sq_cmds; } ;
struct nvme_command {int dummy; } ;


 int memcpy (int *,struct nvme_command*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (size_t,int ) ;

__attribute__((used)) static int nvme_submit_cmd(struct nvme_queue *nvmeq, struct nvme_command *cmd)
{
 unsigned long flags;
 u16 tail;
 spin_lock_irqsave(&nvmeq->q_lock, flags);
 tail = nvmeq->sq_tail;
 memcpy(&nvmeq->sq_cmds[tail], cmd, sizeof(*cmd));
 if (++tail == nvmeq->q_depth)
  tail = 0;
 writel(tail, nvmeq->q_db);
 nvmeq->sq_tail = tail;
 spin_unlock_irqrestore(&nvmeq->q_lock, flags);

 return 0;
}
