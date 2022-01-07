
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_queue {size_t sq_tail; size_t q_depth; int q_db; struct nvme_command* sq_cmds; } ;
struct nvme_ns {int ns_id; } ;
struct TYPE_2__ {int command_id; int nsid; int opcode; } ;
struct nvme_command {TYPE_1__ common; } ;


 int cpu_to_le32 (int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_cmd_flush ;
 int writel (size_t,int ) ;

__attribute__((used)) static int nvme_submit_flush(struct nvme_queue *nvmeq, struct nvme_ns *ns,
        int cmdid)
{
 struct nvme_command *cmnd = &nvmeq->sq_cmds[nvmeq->sq_tail];

 memset(cmnd, 0, sizeof(*cmnd));
 cmnd->common.opcode = nvme_cmd_flush;
 cmnd->common.command_id = cmdid;
 cmnd->common.nsid = cpu_to_le32(ns->ns_id);

 if (++nvmeq->sq_tail == nvmeq->q_depth)
  nvmeq->sq_tail = 0;
 writel(nvmeq->sq_tail, nvmeq->q_db);

 return 0;
}
