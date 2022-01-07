
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct sbp2_lu {int cmd_orb_lock; } ;
struct sbp2_command_info {TYPE_3__* Current_SCpnt; int (* Current_done ) (TYPE_3__*) ;} ;
struct TYPE_6__ {int result; } ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct TYPE_4__ {scalar_t__* hostdata; } ;


 int DID_ABORT ;
 int DID_BUS_BUSY ;
 int SBP2_INFO (char*) ;
 int SUCCESS ;
 int sbp2_agent_reset (struct sbp2_lu*,int) ;
 int sbp2scsi_complete_all_commands (struct sbp2_lu*,int ) ;
 struct sbp2_command_info* sbp2util_find_command_for_SCpnt (struct sbp2_lu*,struct scsi_cmnd*) ;
 int sbp2util_mark_command_completed (struct sbp2_lu*,struct sbp2_command_info*) ;
 scalar_t__ sbp2util_node_is_available (struct sbp2_lu*) ;
 int scsi_print_command (struct scsi_cmnd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static int sbp2scsi_abort(struct scsi_cmnd *SCpnt)
{
 struct sbp2_lu *lu = (struct sbp2_lu *)SCpnt->device->host->hostdata[0];
 struct sbp2_command_info *cmd;
 unsigned long flags;

 SBP2_INFO("aborting sbp2 command");
 scsi_print_command(SCpnt);

 if (sbp2util_node_is_available(lu)) {
  sbp2_agent_reset(lu, 1);


  spin_lock_irqsave(&lu->cmd_orb_lock, flags);
  cmd = sbp2util_find_command_for_SCpnt(lu, SCpnt);
  if (cmd) {
   sbp2util_mark_command_completed(lu, cmd);
   if (cmd->Current_SCpnt) {
    cmd->Current_SCpnt->result = DID_ABORT << 16;
    cmd->Current_done(cmd->Current_SCpnt);
   }
  }
  spin_unlock_irqrestore(&lu->cmd_orb_lock, flags);

  sbp2scsi_complete_all_commands(lu, DID_BUS_BUSY);
 }

 return SUCCESS;
}
