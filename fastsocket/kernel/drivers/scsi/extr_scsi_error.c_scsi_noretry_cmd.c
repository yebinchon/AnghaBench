
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* request; int result; } ;
struct TYPE_2__ {int cmd_flags; int cmd_type; } ;



 int COMMAND_COMPLETE ;





 int REQ_FAILFAST_DEV ;
 int REQ_FAILFAST_DRIVER ;
 int REQ_FAILFAST_TRANSPORT ;
 int REQ_TYPE_BLOCK_PC ;
 int RESERVATION_CONFLICT ;
 int host_byte (int ) ;
 int msg_byte (int ) ;
 int status_byte (int ) ;

int scsi_noretry_cmd(struct scsi_cmnd *scmd)
{
 switch (host_byte(scmd->result)) {
 case 130:
  break;
 case 132:
  return (scmd->request->cmd_flags & REQ_FAILFAST_TRANSPORT);
 case 129:
  return (scmd->request->cmd_flags & REQ_FAILFAST_DEV);
 case 131:
  if (msg_byte(scmd->result) == COMMAND_COMPLETE &&
      status_byte(scmd->result) == RESERVATION_CONFLICT)
   return 0;

 case 128:
  return (scmd->request->cmd_flags & REQ_FAILFAST_DRIVER);
 }

 switch (status_byte(scmd->result)) {
 case 133:




  if (scmd->request->cmd_flags & REQ_FAILFAST_DEV ||
      scmd->request->cmd_type == REQ_TYPE_BLOCK_PC)
   return 1;
 }

 return 0;
}
