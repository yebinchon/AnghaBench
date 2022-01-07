
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {scalar_t__ serial_number; } ;
struct Scsi_Host {int cmd_serial_number; } ;



__attribute__((used)) static inline void scsi_cmd_get_serial(struct Scsi_Host *host, struct scsi_cmnd *cmd)
{
 cmd->serial_number = host->cmd_serial_number++;
 if (cmd->serial_number == 0)
  cmd->serial_number = host->cmd_serial_number++;
}
