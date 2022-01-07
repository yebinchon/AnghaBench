
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {int dummy; } ;
struct nvme_cmd_info {void* ctx; int fn; } ;
typedef int nvme_completion_fn ;


 void* CMD_CTX_CANCELLED ;
 struct nvme_cmd_info* nvme_cmd_info (struct nvme_queue*) ;
 int special_completion ;

__attribute__((used)) static void *cancel_cmdid(struct nvme_queue *nvmeq, int cmdid,
      nvme_completion_fn *fn)
{
 void *ctx;
 struct nvme_cmd_info *info = nvme_cmd_info(nvmeq);
 if (fn)
  *fn = info[cmdid].fn;
 ctx = info[cmdid].ctx;
 info[cmdid].fn = special_completion;
 info[cmdid].ctx = CMD_CTX_CANCELLED;
 return ctx;
}
