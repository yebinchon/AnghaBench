
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {scalar_t__ cmd_len; int cmnd; int sense_buffer; scalar_t__ serial_number; } ;


 int SCSI_SENSE_BUFFERSIZE ;
 int memset (int ,int ,int ) ;
 scalar_t__ scsi_command_size (int ) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;

__attribute__((used)) static void scsi_init_cmd_errh(struct scsi_cmnd *cmd)
{
 cmd->serial_number = 0;
 scsi_set_resid(cmd, 0);
 memset(cmd->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
 if (cmd->cmd_len == 0)
  cmd->cmd_len = scsi_command_size(cmd->cmnd);
}
