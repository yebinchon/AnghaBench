
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int result; int sense_buffer; } ;


 int DRIVER_SENSE ;
 int ILLEGAL_REQUEST ;
 int SAM_STAT_CHECK_CONDITION ;
 int scsi_build_sense_buffer (int ,int ,int ,int,int) ;

__attribute__((used)) static void stex_invalid_field(struct scsi_cmnd *cmd,
          void (*done)(struct scsi_cmnd *))
{
 cmd->result = (DRIVER_SENSE << 24) | SAM_STAT_CHECK_CONDITION;


 scsi_build_sense_buffer(0, cmd->sense_buffer, ILLEGAL_REQUEST, 0x24,
    0x0);
 done(cmd);
}
