
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {int q_depth; int sq_full; int cmdid_data; } ;
struct nvme_cmd_info {void* ctx; void* fn; } ;
typedef void* nvme_completion_fn ;


 void* CMD_CTX_COMPLETED ;
 void* CMD_CTX_INVALID ;
 int clear_bit (int,int ) ;
 struct nvme_cmd_info* nvme_cmd_info (struct nvme_queue*) ;
 void* special_completion ;
 int wake_up (int *) ;

__attribute__((used)) static void *free_cmdid(struct nvme_queue *nvmeq, int cmdid,
      nvme_completion_fn *fn)
{
 void *ctx;
 struct nvme_cmd_info *info = nvme_cmd_info(nvmeq);

 if (cmdid >= nvmeq->q_depth) {
  *fn = special_completion;
  return CMD_CTX_INVALID;
 }
 if (fn)
  *fn = info[cmdid].fn;
 ctx = info[cmdid].ctx;
 info[cmdid].fn = special_completion;
 info[cmdid].ctx = CMD_CTX_COMPLETED;
 clear_bit(cmdid, nvmeq->cmdid_data);
 wake_up(&nvmeq->sq_full);
 return ctx;
}
