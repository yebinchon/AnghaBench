
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {int q_depth; int cmdid_data; } ;
struct nvme_cmd_info {unsigned int timeout; void* ctx; int fn; } ;
typedef int nvme_completion_fn ;


 int EBUSY ;
 int find_first_zero_bit (int ,int) ;
 unsigned int jiffies ;
 struct nvme_cmd_info* nvme_cmd_info (struct nvme_queue*) ;
 scalar_t__ test_and_set_bit (int,int ) ;

__attribute__((used)) static int alloc_cmdid(struct nvme_queue *nvmeq, void *ctx,
    nvme_completion_fn handler, unsigned timeout)
{
 int depth = nvmeq->q_depth - 1;
 struct nvme_cmd_info *info = nvme_cmd_info(nvmeq);
 int cmdid;

 do {
  cmdid = find_first_zero_bit(nvmeq->cmdid_data, depth);
  if (cmdid >= depth)
   return -EBUSY;
 } while (test_and_set_bit(cmdid, nvmeq->cmdid_data));

 info[cmdid].fn = handler;
 info[cmdid].ctx = ctx;
 info[cmdid].timeout = jiffies + timeout;
 return cmdid;
}
