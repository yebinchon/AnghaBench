
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srb {struct scsi_cmnd* cmd; } ;
struct scsi_qla_host {struct srb** outstanding_cmds; } ;
struct scsi_cmnd {int dummy; } ;


 int FAILED ;
 int MAX_OUTSTANDING_COMMANDS ;
 int SCSI_BUS_32 (struct scsi_cmnd*) ;
 int SCSI_TCN_32 (struct scsi_cmnd*) ;
 int SUCCESS ;
 int qla1280_wait_for_single_command (struct scsi_qla_host*,struct srb*) ;

__attribute__((used)) static int
qla1280_wait_for_pending_commands(struct scsi_qla_host *ha, int bus, int target)
{
 int cnt;
 int status;
 struct srb *sp;
 struct scsi_cmnd *cmd;

 status = SUCCESS;





 for (cnt = 0; cnt < MAX_OUTSTANDING_COMMANDS; cnt++) {
  sp = ha->outstanding_cmds[cnt];
  if (sp) {
   cmd = sp->cmd;

   if (bus >= 0 && SCSI_BUS_32(cmd) != bus)
    continue;
   if (target >= 0 && SCSI_TCN_32(cmd) != target)
    continue;

   status = qla1280_wait_for_single_command(ha, sp);
   if (status == FAILED)
    break;
  }
 }
 return status;
}
