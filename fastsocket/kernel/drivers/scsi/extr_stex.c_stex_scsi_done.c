
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_ccb {int srb_status; int scsi_status; struct scsi_cmnd* cmd; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;} ;


 int COMMAND_COMPLETE ;
 int DID_BUS_BUSY ;
 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DID_OK ;
 int DRIVER_SENSE ;



 int SRB_SEE_SENSE ;




 int SRB_STATUS_SUCCESS ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void stex_scsi_done(struct st_ccb *ccb)
{
 struct scsi_cmnd *cmd = ccb->cmd;
 int result;

 if (ccb->srb_status == SRB_STATUS_SUCCESS || ccb->srb_status == 0) {
  result = ccb->scsi_status;
  switch (ccb->scsi_status) {
  case 132:
   result |= DID_OK << 16 | COMMAND_COMPLETE << 8;
   break;
  case 133:
   result |= DRIVER_SENSE << 24;
   break;
  case 134:
   result |= DID_BUS_BUSY << 16 | COMMAND_COMPLETE << 8;
   break;
  default:
   result |= DID_ERROR << 16 | COMMAND_COMPLETE << 8;
   break;
  }
 }
 else if (ccb->srb_status & SRB_SEE_SENSE)
  result = DRIVER_SENSE << 24 | 133;
 else switch (ccb->srb_status) {
  case 128:
   result = DID_NO_CONNECT << 16 | COMMAND_COMPLETE << 8;
   break;
  case 131:
   result = DID_BUS_BUSY << 16 | COMMAND_COMPLETE << 8;
   break;
  case 129:
  case 130:
  default:
   result = DID_ERROR << 16 | COMMAND_COMPLETE << 8;
   break;
 }

 cmd->result = result;
 cmd->scsi_done(cmd);
}
