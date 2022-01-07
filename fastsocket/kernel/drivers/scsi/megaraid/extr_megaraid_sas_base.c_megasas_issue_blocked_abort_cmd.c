
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct megasas_instance {int abort_cmd_wait_q; TYPE_2__* instancet; } ;
struct megasas_cmd {int sync_cmd; int cmd_status; int frame_phys_addr; int index; TYPE_1__* frame; } ;
struct megasas_abort_frame {int cmd_status; scalar_t__ abort_mfi_phys_addr_hi; int abort_mfi_phys_addr_lo; int abort_context; scalar_t__ flags; int cmd; } ;
struct TYPE_4__ {int (* issue_dcmd ) (struct megasas_instance*,struct megasas_cmd*) ;} ;
struct TYPE_3__ {struct megasas_abort_frame abort; } ;


 int MFI_CMD_ABORT ;
 struct megasas_cmd* megasas_get_cmd (struct megasas_instance*) ;
 int megasas_return_cmd (struct megasas_instance*,struct megasas_cmd*) ;
 int stub1 (struct megasas_instance*,struct megasas_cmd*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int
megasas_issue_blocked_abort_cmd(struct megasas_instance *instance,
    struct megasas_cmd *cmd_to_abort)
{
 struct megasas_cmd *cmd;
 struct megasas_abort_frame *abort_fr;

 cmd = megasas_get_cmd(instance);

 if (!cmd)
  return -1;

 abort_fr = &cmd->frame->abort;




 abort_fr->cmd = MFI_CMD_ABORT;
 abort_fr->cmd_status = 0xFF;
 abort_fr->flags = 0;
 abort_fr->abort_context = cmd_to_abort->index;
 abort_fr->abort_mfi_phys_addr_lo = cmd_to_abort->frame_phys_addr;
 abort_fr->abort_mfi_phys_addr_hi = 0;

 cmd->sync_cmd = 1;
 cmd->cmd_status = 0xFF;

 instance->instancet->issue_dcmd(instance, cmd);




 wait_event(instance->abort_cmd_wait_q, cmd->cmd_status != 0xFF);
 cmd->sync_cmd = 0;

 megasas_return_cmd(instance, cmd);
 return 0;
}
