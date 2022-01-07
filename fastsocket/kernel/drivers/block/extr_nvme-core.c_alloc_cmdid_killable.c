
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {int sq_full; } ;
typedef int nvme_completion_fn ;


 int EINTR ;
 int alloc_cmdid (struct nvme_queue*,void*,int ,unsigned int) ;
 int wait_event_killable (int ,int) ;

__attribute__((used)) static int alloc_cmdid_killable(struct nvme_queue *nvmeq, void *ctx,
    nvme_completion_fn handler, unsigned timeout)
{
 int cmdid;
 wait_event_killable(nvmeq->sq_full,
  (cmdid = alloc_cmdid(nvmeq, ctx, handler, timeout)) >= 0);
 return (cmdid < 0) ? -EINTR : cmdid;
}
