
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sync_cmd_info {int status; int result; int task; } ;
struct nvme_queue {int dummy; } ;
struct TYPE_2__ {int command_id; } ;
struct nvme_command {TYPE_1__ common; } ;


 int EINTR ;
 int TASK_KILLABLE ;
 int alloc_cmdid_killable (struct nvme_queue*,struct sync_cmd_info*,int ,unsigned int) ;
 int current ;
 int nvme_abort_command (struct nvme_queue*,int) ;
 int nvme_submit_cmd (struct nvme_queue*,struct nvme_command*) ;
 int schedule_timeout (unsigned int) ;
 int set_current_state (int ) ;
 int sync_completion ;

int nvme_submit_sync_cmd(struct nvme_queue *nvmeq, struct nvme_command *cmd,
      u32 *result, unsigned timeout)
{
 int cmdid;
 struct sync_cmd_info cmdinfo;

 cmdinfo.task = current;
 cmdinfo.status = -EINTR;

 cmdid = alloc_cmdid_killable(nvmeq, &cmdinfo, sync_completion,
        timeout);
 if (cmdid < 0)
  return cmdid;
 cmd->common.command_id = cmdid;

 set_current_state(TASK_KILLABLE);
 nvme_submit_cmd(nvmeq, cmd);
 schedule_timeout(timeout);

 if (cmdinfo.status == -EINTR) {
  nvme_abort_command(nvmeq, cmdid);
  return -EINTR;
 }

 if (result)
  *result = cmdinfo.result;

 return cmdinfo.status;
}
