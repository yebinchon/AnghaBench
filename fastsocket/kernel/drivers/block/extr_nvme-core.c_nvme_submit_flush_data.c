
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {int dummy; } ;
struct nvme_ns {int dummy; } ;


 scalar_t__ CMD_CTX_FLUSH ;
 int NVME_IO_TIMEOUT ;
 int alloc_cmdid (struct nvme_queue*,void*,int ,int ) ;
 int nvme_submit_flush (struct nvme_queue*,struct nvme_ns*,int) ;
 int special_completion ;
 scalar_t__ unlikely (int) ;

int nvme_submit_flush_data(struct nvme_queue *nvmeq, struct nvme_ns *ns)
{
 int cmdid = alloc_cmdid(nvmeq, (void *)CMD_CTX_FLUSH,
     special_completion, NVME_IO_TIMEOUT);
 if (unlikely(cmdid < 0))
  return cmdid;

 return nvme_submit_flush(nvmeq, ns, cmdid);
}
